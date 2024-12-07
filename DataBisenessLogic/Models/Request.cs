using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DataBisenessLogic;

public partial class Request
{
    public int RequestId { get; set; }

    public DateTime? StartDate { get; set; }

    public string? HomeTechType { get; set; }

    public string? HomeTechModel { get; set; }

    [Display(Name = "Problem")]
    [Required(ErrorMessage = "Проблема обязательна для заполнения.")]
    [MaxLength(100)]
    public string? ProblemDescryption { get; set; }

    [Display(Name = "Status")]
    [Required(ErrorMessage = "Введите статус")]
    public string? RequestStatus { get; set; }

    public DateTime? ComletionDate { get; set; }

    public string? RepairParts { get; set; }

    [Display(Name = "User")]
    [Required(ErrorMessage = "Должен быть сотрудник")]
    public int? UserId { get; set; }

    [Display(Name = "Client")]
    [Required(ErrorMessage = "Обязательно для заполнения")]
    public int? ClientId { get; set; }

    public virtual Client? Client { get; set; }

    public virtual ICollection<Comment> Comments { get; set; } = new List<Comment>();

    public virtual User? User { get; set; }
}
