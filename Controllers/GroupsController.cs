using Microsoft.AspNetCore.Mvc;
using PJATK_APBD_Test1_Example.Services;

namespace PJATK_APBD_Test1_Example.Controllers;

[ApiController]
[Route("api/[controller]")] // api/groups
public class GroupsController(IDbService db) : ControllerBase
{
    [HttpGet("{id:int}")]
    public async Task<IActionResult> Get(int id)
    {
        var result = await db.GetGroupDetailsByIdAsync(id);
        if (result is null) return NotFound($"Group with id:{id} does not exits");
        return Ok(result);
    }
}