<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WindowsAzureWebRole" generation="1" functional="0" release="0" Id="c7742356-1f08-4603-bb52-cf94012d49cc" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WindowsAzureWebRoleGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/LB:WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/MapWebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/MapWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/MapWebRole:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="WebRole:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/MapWebRole:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="WebRole:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/MapWebRole:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRoleInstances" />
          </setting>
        </map>
        <map name="MapWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapWebRole:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapWebRole:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole" generation="1" functional="0" release="0" software="D:\Official\Hudson\WindowsAzureWebRole\WindowsAzureWebRole\bin\Debug\WindowsAzureWebRole.csx\roles\WebRole" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRoleInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="WebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="30730d84-5cd5-4c5d-b35d-201829203d77" ref="Microsoft.RedDog.Contract\ServiceContract\WindowsAzureWebRoleContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="ff998944-d5b9-4913-a08e-7b552585b2bd" ref="Microsoft.RedDog.Contract\Interface\WebRole:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/WindowsAzureWebRole/WindowsAzureWebRoleGroup/WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>