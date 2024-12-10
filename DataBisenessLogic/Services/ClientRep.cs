using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    public class ClientRep : IClientRep
    {
        private readonly ServiceRepairOfHouseholdContext _context = new ServiceRepairOfHouseholdContext();

        public async Task<Client> AddClient(Client client)
        {
            _context.Clients.Add(client);
            await _context.SaveChangesAsync();
            return client;
        }

        public Task<List<Client>> GetClient()
        {
            return _context.Clients.ToListAsync();
        }

        public Task<Client> GetClientId(int clientId)
        {
            return _context.Clients.FirstOrDefaultAsync(x => x.ClientId == clientId);
        }
    }
}
