/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-ETH.aml, Thu Sep 27 14:54:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002EE (750)
 *     Revision         0x01
 *     Checksum         0x9F
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299ETH"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299ETH", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GBE1, DeviceObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00)
    {
        Scope (GBE1)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ETH0)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
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
                            "Intel I219V2 Ethernet"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Intel I219V2 PCI Express Gigabit Ethernet"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "2"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x72, 0x86, 0x00, 0x00                           // r...
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xB8, 0x15, 0x00, 0x00                           // ....
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x43, 0x10, 0x00, 0x00                           // C...
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Scope (\_SB.PC00.RP06)
    {

        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ETH1)
        {
            Name (_ADR, Zero)  // _ADR: Address

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
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
                            "Intel I211VA Ethernet"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Intel I211VA PCI Express Gigabit Ethernet"
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "2"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0xF0, 0x85, 0x00, 0x00                           // ....
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x39, 0x15, 0x00, 0x00                           // 9...
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x43, 0x10, 0x00, 0x00                           // C...
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}
