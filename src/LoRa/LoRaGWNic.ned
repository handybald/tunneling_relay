//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package lpwan.LoRa;

import inet.linklayer.contract.IWirelessInterface;
import inet.linklayer.common.WirelessInterface;

import lpwan.LoRaPhy.LoRaMedium;

module LoRaGWNic extends WirelessInterface
{
    parameters:
        @display("i=block/ifcard");
        *.interfaceTableModule = default(absPath(this.interfaceTableModule));        
        radio.typename = default("LoRaGWRadio");
        radio.antenna.mobilityModule = "^.^.^.mobility";
        radio.transmitter.typename = "LoRaTransmitter";
        radio.transmitter.headerLength = 0B;
        radio.receiver.typename = "LoRaReceiver";
        mac.typename = "LoRaGWMac";
}
