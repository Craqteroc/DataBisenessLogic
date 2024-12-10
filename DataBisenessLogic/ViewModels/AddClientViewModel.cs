using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.ViewModels
{
    internal class AddClientViewModel : BindableBase
    {
        //    private IClientRep _repository;
        //    public AddClientViewModel()
        //    {
        //        _repository = new CustomerRepository();
        //        //SaveCommand = ????;
        //        CancelCommand = new RelayCommand(OnCancel));
        //    }
        //    private bool _isEditeMode;
        //    public bool IsEditeMode
        //    {
        //        get => _isEditeMode;
        //        set => SetProperty(ref _isEditeMode, value);
        //    }


        //    public RelayCommand SaveCommand { get; private set; }
        //    public RelayCommand CancelCommand { get; private set; }
        //    public event Action Done;

        //    private void OnCanExecuteChanges(object sender, EventArgs e)
        //    {
        //        SaveCommand.OnCanExecuteChanged();
        //    }


        //    private void SetCustomer(Client client)
        //    {
        //        _editingCustomer = customer;
        //        if (Customer != null)
        //            Customer.ErrorsChanged -= OnCanExecuteChanges;
        //        Customer = new ValidableCustomer();
        //        Customer.ErrorsChanged += OnCanExecuteChanges;
        //        CopyCustomer(customer, Customer);
        //    }

        //    private void OnCancel()
        //    {
        //        Done?.Invoke();
        //    }
        //    private bool CanSave() => !Client.HasErrors;
        //}
    }
}

