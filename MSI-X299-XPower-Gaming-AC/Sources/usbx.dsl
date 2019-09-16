DefinitionBlock ("", "SSDT", 1, "KGP", "X299USBX", 0x00000000)
{
    Device (_SB.USBX)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x08)
            {
                "kUSBSleepPortCurrentLimit", 
                0x0834, 
                "kUSBSleepPowerSupply", 
                0x13EC, 
                "kUSBWakePortCurrentLimit", 
                0x0834, 
                "kUSBWakePowerSupply", 
                0x13EC
            })
        }
    }
}