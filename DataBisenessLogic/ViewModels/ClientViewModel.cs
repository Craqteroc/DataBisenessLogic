﻿using DataBisenessLogic.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace DataBisenessLogic.ViewModels
{
    internal class ClientViewModel : BindableBase
    {
        private IClientRep _repository;
        public ICommand LoadCustomersCommand { get; private set; }
        public ClientViewModel(IClientRep repository)
        {

            _repository = repository;
            Clients = new ObservableCollection<Client>();
            LoadClient();

            //AddCustomerCommand = new RelayCommand(OnAddCustomer);
            //EditCustomerCommand = new RelayCommand<Customer>(OnEditCustomer);
            //ClearSearchInput = new RelayCommand(OnClearSearch);
        }

        private ObservableCollection<Client>? _clients;
        public ObservableCollection<Client>? Clients
        {
            get => _clients;
            set => SetProperty(ref _clients, value);
        }

        private List<Client>? _clientList;
        public async void LoadClient()
        {
            _clientList = await _repository.GetClient();
            Clients = new ObservableCollection<Client>(_clientList);
        }

        //private string? _searchInput;
        //public string? SearchInput
        //{
        //    get => _searchInput;
        //    set
        //    {
        //        SetProperty(ref _searchInput, value);
        //        FilterCustomersBuName(_searchInput);
        //    }
        //}

        //private void FilterCustomersBuName(string findText)
        //{
        //    if (string.IsNullOrEmpty(findText))
        //    {
        //        Customers = new ObservableCollection<Customer>(_customersList);
        //        return;
        //    }
        //    else
        //    {
        //        Customers = new ObservableCollection<Customer>(
        //            _customersList.Where(c => c.FullName.ToLower()
        //            .Contains(findText.ToLower())));
        //    }
        //}

        public RelayCommand AddClientCommand { get; private set; }
        public RelayCommand ClearSearchInput { get; private set; }

        public event Action<Client> PlaceOrderRequested = delegate { };
        public event Action<Client> AddClientRequested = delegate { };
        public event Action<Client> EditClientRequested = delegate { };

        private void OnPlaceClient(Client client)
        {
            PlaceOrderRequested(client);
        }

        private void OnAddClient()
        {
            AddClientRequested(new Client { });
        }


        //private void OnClearSearch()
        //{
        //    SearchInput = null;
        //}
    }
}
