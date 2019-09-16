
DefinitionBlock ("", "SSDT", 1, "KGP", "X299HDEF", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.CAVS, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00)
    {
        Scope (CAVS)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x16)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "model", 
                        Buffer (0x1C)
                        {
                            "Realtek ALC S1220A HD Audio"
                        }, 

                        "name", 
                        Buffer (0x27)
                        {
                            "Realtek ALC S1220A HD Audio Controller"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }, 

                        "device_type", 
                        Buffer (0x14)
                        {
                            "HD-Audio-Controller"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xF0, 0xA2, 0x00, 0x00                           // ....
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,0C0C"
                        }, 

                        "MaximumBootBeepVolume", 
                        Buffer (One)
                        {
                             0xEE                                             // .
                        }, 

                        "MaximumBootBeepVolumeAlt", 
                        Buffer (One)
                        {
                             0xEE                                             // .
                        }, 

                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                           // ....
                        }, 

                        "PinConfigurations", 
                        Buffer (Zero){}
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}
