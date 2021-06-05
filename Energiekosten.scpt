try
set WattDerKomponenten to "200" #<- Wattverbrauch der Komponenten
set Stromkosten to "0,31" #<- Stromkosten in deinem Land
set Mining to "1,80" #<- Die Mining Kraft des Rechners in Euro an einem Tag 

#Bei reiner Berechnung der Stromkosten für Mining=O eingeben


set WattDerKomponenten to WattDerKomponenten as number
set Stromkosten to Stromkosten as number
set Mining to Mining as number

set kwH to 1000 as number
set space to " / " as string
set space1 to "   / " as string
set space2 to "                                                                                                                                        " as string
set space3 to "                                                                                    " as string
set EinWatt to Stromkosten / kwH

set BenutzerWatt to EinWatt * WattDerKomponenten #Stromkosten pro Watt

set B1Stromkosten to BenutzerWatt * 24 as string
set B2Stromkosten to BenutzerWatt * 24 * 30 as string
set B3Stromkosten to BenutzerWatt * 24 * 30 * 12 as string

set B1Mining to Mining as string
set B2Mining to Mining * 30 as string
set B3Mining to Mining * 30 * 12 as string

set B1Profit to Mining - (BenutzerWatt * 24) as string
set B2Profit to (Mining * 30) - (BenutzerWatt * 24 * 30) as string
set B3Profit to (Mining * 30 * 12) - (BenutzerWatt * 24 * 30 * 12) as string

set x to "                         " & "Tag" & "     Monat " & "  Jahr " & "                            Watt= " & WattDerKomponenten
set b123S to space2 & "Stromkosten= " & B1Stromkosten & space & B2Stromkosten & space & B3Stromkosten & " - Euro"
set b123M to space3 & "Mining= " & "          " & B1Mining & space & "" & B2Mining & space & B3Mining & " - Euro (für Mining)"
set b123P to space2 & "Profit=             " & B1Profit & space & B2Profit & space & B3Profit & " - Euro (für Mining)"

set xxa to x & b123S & b123M & b123P

display dialog xxa buttons {"OK"} with title "Energiekosten" default button 1
end try
