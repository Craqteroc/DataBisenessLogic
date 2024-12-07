using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    public class RequestRep : IRequestRep
    {
        public Task<Request> AddRequest(Request request)
        {
            throw new NotImplementedException();
        }

        public Task DeleteRequest(int requestId)
        {
            throw new NotImplementedException();
        }

        public Task<List<Request>> GetRequest()
        {
            throw new NotImplementedException();
        }

        public Task<Request> GetRequestId(int requestId)
        {
            throw new NotImplementedException();
        }

        public Task<Request> UpdateRequest(Request request)
        {
            throw new NotImplementedException();
        }
    }
}
