// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
//

DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_a2af", Package()
            {
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
//                    "HS01", Package() // Possible Case USB3 Gen1
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 1, 0, 0, 0 },
//                    },
//                    "HS02", Package() // Possible Case USB3 Gen1
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 2, 0, 0, 0 },
//                    },
                    "HS03", Package() // Possible Case UBS3 Gen1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package() // Possible Case USB3 Gen1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HS05", Package() // Back All of Row 3 (Hub?)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS06", Package() // Back All of Row 2 (Hub?)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
//                    "HS07", Package() // Possible Front Panel / Case USB2
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 7, 0, 0, 0 },
//                    },
//                    "HS08", Package() // Possible Front Panel / Case USB2
//                    {
//                        "UsbConnector", 0,
//                        "port", Buffer() { 8, 0, 0, 0 },
//                    },
                    "HS09", Package() // Possible Case USB 2
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package() // Possible Case USB2
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "HS11", Package() // Back 1-1
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                    "HS12", Package() // Back 1-2
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
//                    "SS01", Package() // Possible Case USB 3 Gen1
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 17, 0, 0, 0 },
//                    },
//                    "SS02", Package() // Possible Case USB 3 Gen1
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 18, 0, 0, 0 },
//                    },
                    "SS03", Package() // Possible Case USB 3 Gen1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 19, 0, 0, 0 },
                    },
                    "SS04", Package() // Possible Case USB 3 Gen1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 20, 0, 0, 0 },
                    },
                    "SS05", Package() // Back Panel All of Row 3
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                    "SS06", Package() // Back Panel All of Row 2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 22, 0, 0, 0 },
                    },
                    "USR1", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "USR2", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                },
            }
        })
    }
}
//EOF
