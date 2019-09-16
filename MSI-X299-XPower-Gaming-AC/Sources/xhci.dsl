DefinitionBlock ("", "SSDT", 1, "KGP", "X299XHCI", 0x00000000)
{
    External (_SB_.PC00.XHCI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00.XHCI)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x1B)
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

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xAF, 0xA2, 0x00, 0x00                           // ....
                    }, 

                    "name", 
                    Buffer (0x34)
                    {
                        "ASMedia / Intel X299 Series Chipset XHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x34)
                    {
                        "ASMedia ASM1074 / Intel X299 Series Chipset USB 3.0"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0A8C, 
                    "AAPL,current-in-sleep", 
                    0x0A8C, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}