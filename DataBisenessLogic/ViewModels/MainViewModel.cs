using DataBisenessLogic.Pages;
using DataBisenessLogic.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace DataBisenessLogic.ViewModels
{
    internal class MainViewModel : ViewModelBase
    {
        private Page client = new PageClient();
        private Page addclient = new PageAddClient();
        private Page request = new PageRequest();
        private Page user = new PageUser();
        private Page _Nachalnoe = new PageClient();
        private Page _client = new PageClient();
        private Page addrequest = new PageAddRequest();
        private Page adduser = new PageAddUser();


        public Page Nachalnoe
        {
            get => _Nachalnoe;
            set => Set(ref _Nachalnoe, value);
        }
        public Page Client
        {
            get => _client;
            set => Set(ref _client, value);
        }

        public ICommand OpenPageClient
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = client);
            }
        }
        public ICommand OpenPageRequest
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = request);
            }
        }
        public ICommand OpenPageUser
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = user);
            }
        }
        public ICommand OpenClientAdd
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = addclient);
            }
        }

        public ICommand OpenRequestAdd
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = addrequest);
            }
        }
        public ICommand OpenUserAdd
        {
            get
            {
                return new RelayCommand(() => Nachalnoe = adduser);
            }
        }

    }
}
