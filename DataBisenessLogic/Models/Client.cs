using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DataBisenessLogic;

public partial class Client
{
    
    public int ClientId { get; set; }

    [Display(Name = "Client Name")]
    [Required(ErrorMessage = "Имя обязательно для заполнения.")]
    [MaxLength(100)]
    public string? ClientName { get; set; }

    [Display(Name = "Client Phone")]
    [Required(ErrorMessage = "Телефон обязателен для заполнения.")]
    [StringLength(50, MinimumLength = 6, ErrorMessage = "Введите коллиество не менее 6")]
    public string? Phone { get; set; }

    public virtual ICollection<Request> Requests { get; set; } = new List<Request>();

}
