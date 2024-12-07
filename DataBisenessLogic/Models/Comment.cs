using System;
using System.Collections.Generic;

namespace DataBisenessLogic;

public partial class Comment
{
    public int CommentId { get; set; }

    public string? Message { get; set; }

    public int? UserId { get; set; }

    public int? RequestId { get; set; }

    public virtual Request? Request { get; set; }

    public virtual User? User { get; set; }
}
