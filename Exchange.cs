using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Globalization;

namespace WpfApp1
{
    public class Rate
    {
        public string Name { get; set; }
        public string Code { get; set; }
        public string Relatively {get => "UAH"; }
        public decimal Buy { get; set; }
        public decimal Sell { get; set; }
        public override string ToString()
        {
            return Name;
        }
        public Rate(string code, string buy, string sell)
        {
            Code = code;
            Buy = decimal.Parse(buy, CultureInfo.InvariantCulture);
            Sell = decimal.Parse(sell, CultureInfo.InvariantCulture);
            switch (Code)
            {
                case "CAD":
                    Name = "Канадский доллар";
                    break;
                case "CHF":
                    Name = "Швейцарский франк";
                    break;
                case "CZK":
                    Name = "Чешская крона";
                    break;
                case "GBP":
                    Name = "Фунт стерлингов Велико­британии";
                    break;
                case "ILS":
                    Name = "Израильский шекель";
                    break;
                case "JPY":
                    Name = "Японская йена";
                    break;
                case "NOK":
                    Name = "Норвежская крона";
                    break;
                case "PLZ":
                    Name = "Польский злотый";
                    break;
                case "SEK":
                    Name = "Шведская крона";
                    break;
                case "EUR":
                    Name = "Евро";
                    break;
                case "RUR":
                    Name = "Российский рубль";
                    break;
                case "USD":
                    Name = "Доллар США";
                    break;
                case "UAH":
                    Name = "Украинская гривна";
                    break;
                default:
                    break;
            }
        }

    }
    public class Exchange
    {
        public List<Rate> ExchangeRates { get; set; } = new List<Rate>();
        private readonly Regex _exchangeRegex = new Regex("ccy=\"([^\"]+)[^>]+buy=\"([^\"]+)[^>]+sale=\"([^\"]+)");
        public Rate GetRate(string Code)
        {
            return ExchangeRates.Find(o => o.Code == Code);
        }
        public decimal GetModifier(Rate Rate1, Rate Rate2)
        {
            return Rate1.Buy / Rate2.Sell;
        }
        public void Renew()
        {
            ExchangeRates.Clear();
            ExchangeRates.Add(new Rate("UAH", "1", "1"));
            WebClient Link = new WebClient();
            string DownloadString = Link.DownloadString(@"https://api.privatbank.ua/p24api/pubinfo?exchange&coursid=3") + Link.DownloadString(@"https://api.privatbank.ua/p24api/pubinfo?exchange&coursid=4");
            var matches = _exchangeRegex.Matches(DownloadString);
            foreach (Match match in matches)
            {
                if (GetRate(match.Groups[1].Value) == null)
                {
                    if (match.Groups[1].Value != "BTC")
                    {
                        Rate newRate;
                        newRate = new Rate(match.Groups[1].Value, match.Groups[2].Value, match.Groups[3].Value);
                        ExchangeRates.Add(newRate);
                    }
                    
                }
            }
        }
    }
}
