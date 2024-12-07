using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    interface IClientRep
    {
        //получить всех клиентов
        Task<List<Client>> GetClient();

        //получить клиента по id
        Task<Client> GetClientId(int clientId);

        //добавление клиента
        Task<Client> AddClient(Client client);
    }
}
