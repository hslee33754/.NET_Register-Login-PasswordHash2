using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Create seed code that will be hashed with user password
/// </summary>
public class SeedCode
{
    public int GetSeedCode()
    {
        Random r = new Random();
        int seed = r.Next(10000000, 99999999);
        return seed;
    }
}