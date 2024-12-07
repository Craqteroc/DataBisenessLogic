using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    public class ClientRep : IClientRep
    {
        public Task<Client> AddClient(Client client)
        {
            throw new NotImplementedException();
        }

        public Task<List<Client>> GetClient()
        {
            throw new NotImplementedException();
        }

        public Task<Client> GetClientId(int clientId)
        {
            throw new NotImplementedException();
        }
    }
}
