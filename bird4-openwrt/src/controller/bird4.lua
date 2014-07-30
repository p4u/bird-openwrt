--[[ 
Copyright (C) 2014 - Eloi Carbó Solé (GSoC2014) 
BGP/Bird integration with OpenWRT and QMP

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]

module("luci.controller.bird4", package.seeall)

function index()
        entry({"admin","network","bird4"}, cbi("bird4/overview"), "Bird", 0).dependent=false
        entry({"admin","network","bird4","overview"}, cbi("bird4/overview"), "Overview", 1).dependent=false
        entry({"admin","network","bird4","proto_general"}, cbi("bird4/gen_proto"), "General protocols", 3).dependent=false
        entry({"admin","network","bird4","proto_bgp"}, cbi("bird4/bgp_proto"), "BGP Protocol", 4).dependent=false
end

