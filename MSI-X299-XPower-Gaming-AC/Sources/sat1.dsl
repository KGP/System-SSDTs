DefinitionBlock ("", "SSDT", 1, "KGP", "X299SAT1", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.SAT1, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00)
    {
        Scope (SAT1)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x16)
                        {
                            "Intel AHCI Controller"
                        }, 

                        "model", 
                        Buffer (0x1F)
                        {
                            "Intel X299 Series Chipset SATA"
                        }, 

                        "device_type", 
                        Buffer (0x15)
                        {
                            "AHCI SATA Controller"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x82, 0xA2, 0x00, 0x00                           // ....
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}
