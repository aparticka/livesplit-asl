state("nestopia")
{
    byte level : "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0xfe;
    byte numVirusesLeft: "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x10c;
}

start
{
    // Only auto-starts when starting at level 0
    return current.level == 0 && current.numVirusesLeft == 4;
}

split
{
    return current.numVirusesLeft == 0 && old.numVirusesLeft != 0;
}
