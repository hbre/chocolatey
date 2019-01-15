using System;
using System.IO;
using System.Security.Cryptography;

static internal class FileHelper
{
    public static string GetChecksum(string file)
    {
        using (var stream = File.OpenRead(file))
        {
            var sha = new SHA256Managed();
            var checksum = sha.ComputeHash(stream);
            return BitConverter.ToString(checksum).Replace("-", String.Empty);
        }
    }
}