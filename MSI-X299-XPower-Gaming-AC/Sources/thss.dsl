DefinitionBlock ("", "SSDT", 1, "KGP", "X299THSS", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00)
    {
        Device (THSS)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Name (THSS, One)

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
                        Buffer (0x24)
                        {
                            "Intel X299 Series Thermal Subsystem"
                        }, 

                        "model", 
                        Buffer (0x24)
                        {
                            "Intel X299 Series Thermal Subsystem"
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "Thermal-Controller"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,a2a1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}