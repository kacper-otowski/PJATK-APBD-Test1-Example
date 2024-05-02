using Microsoft.AspNetCore.Mvc;
using PJATK_APBD_Test1_Example.Services;

namespace PJATK_APBD_Test1_Example.Controllers;

[ApiController]
[Route("api/[controller]")] // api/students
public class StudentsController(IDbService db) : ControllerBase
{
    [HttpDelete("{id:int}")]
    public async Task<IActionResult> Remove(int id)
    {
        var result = await db.RemoveStudentByIdAsync(id);
        if (result) return NoContent();
        return NotFound($"Student with id:{id} does not exist");
    }
}