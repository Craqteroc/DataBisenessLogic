using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    public interface IRequestRep
    {
        //получить все заявки
        Task<List<Request>> GetRequest();

        //получить заявку по id
        Task<Request> GetRequestId(int requestId);

        //обновлять заяки
        Task<Request> UpdateRequest(Request request);

        //удаление заявки по id
        Task DeleteRequest(int requestId);

        //создание новой заявки
        Task<Request> AddRequest(Request request);
    }
}
