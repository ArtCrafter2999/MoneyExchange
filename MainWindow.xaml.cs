using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace WpfApp1
{
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public Exchange Exchange { get; set; } = new Exchange();
        public ObservableCollection<Rate> ExchangeRates => new ObservableCollection<Rate>(Exchange.ExchangeRates);
        public ICommand Renew => new RelayCommand(o => { Exchange.Renew(); UpdateDate = $"(Обновленно {DateTime.Now:dd.MM.yyyy HH:mm:ss})"; OnPropertyChanged("ExchangeRates"); OnPropertyChanged("UpdateDate"); });
        public string UpdateDate { get; set; } = "";
        private Rate _leftRate;
        public Rate comboBoxLeft
        {
            get => _leftRate;
            set
            {
                _leftRate = value;
                RightNum = RightNum;
                OnPropertyChanged("comboBoxLeft");
                OnPropertyChanged("LeftNum");
                OnPropertyChanged("RightNum");
                
            }
        }
        private Rate _rightRate;
        public Rate comboBoxRight
        {
            get => _rightRate;
            set
            {
                _rightRate = value;
                LeftNum = LeftNum;
                OnPropertyChanged("comboBoxRight");
                OnPropertyChanged("LeftNum");
                OnPropertyChanged("RightNum");
            }
        }
        private decimal _left;
        public decimal LeftNum
        {
            get
            {
                return _left;
            }
            set
            {
                _left = value;
                _right = Math.Round(_left * Exchange.GetModifier(_leftRate, _rightRate), 2);
                OnPropertyChanged("LeftNum");
                OnPropertyChanged("RightNum");
            }
        }
        private decimal _right;
        public decimal RightNum
        {
            get
            {
                return _right;
            }
            set
            {
                _right = value;
                _left = Math.Round(_right * Exchange.GetModifier(_rightRate, _leftRate), 2);
                OnPropertyChanged("LeftNum");
                OnPropertyChanged("RightNum");
            }
        }
        public MainWindow()
        {
            InitializeComponent();
            //Renew.Execute(new object());
            //UpdateDate.Content = $"(Обновленно {DateTime.Now:dd.MM.yyyy HH:mm:ss})";
            DataContext = this;
        }
        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }
}
