using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBisenessLogic.Services
{
    interface IUserRep
    {
        //получить всех работников
        Task<List<User>> GetUser();

        //получить работника по id
        Task<User> GetUserId(int userId);

        //обновлять список работников
        Task<User> UpdateUser(User user);

        //удаление заявки по id
        Task DeleteUser(int userId);

        //добавление нового работника
        Task<User> AddUser(User user);
    }
}
