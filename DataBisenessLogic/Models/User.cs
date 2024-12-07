using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DataBisenessLogic;

public partial class User
{
    public int UserId { get; set; }

    [Display(Name = "Username")]
    [Required(ErrorMessage = "Имя обязательно для заполнения")]
    public string? Username { get; set; }

    public string? PasswordHash { get; set; }

    [Display(Name = "Role")]
    [Required(ErrorMessage = "Роль требуется для создаия сотрудника")]
    public int? RoleId { get; set; }

    public virtual ICollection<Comment> Comments { get; set; } = new List<Comment>();

    public virtual ICollection<Request> Requests { get; set; } = new List<Request>();

    public virtual Role? Role { get; set; }
}
