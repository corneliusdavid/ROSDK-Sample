<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" ToolsVersion="4.0">
  <PropertyGroup>
    <ProductVersion>3.5</ProductVersion>
    <ProjectGuid>{53c7dd0d-c528-40ae-a8e6-7498fa3f60da}</ProjectGuid>
    <RootNamespace>SampleServer</RootNamespace>
    <StartupClass />
    <OutputType>winexe</OutputType>
    <AssemblyName>SampleServer</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyOutParams>False</AllowLegacyOutParams>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <ApplicationIcon>Properties\App.ico</ApplicationIcon>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>
    <Name>SampleServer</Name>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <OutputPath>..\bin</OutputPath>
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <GeneratePDB>True</GeneratePDB>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <OutputPath>.\bin\Release</OutputPath>
    <GeneratePDB>False</GeneratePDB>
    <GenerateMDB>False</GenerateMDB>
    <EnableAsserts>False</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <StartMode>Project</StartMode>
    <RegisterForComInterop>False</RegisterForComInterop>
    <CpuType>anycpu</CpuType>
    <RuntimeVersion>v25</RuntimeVersion>
    <XmlDoc>False</XmlDoc>
    <XmlDocWarningLevel>WarningOnPublicMembers</XmlDocWarningLevel>
    <EnableUnmanagedDebugging>False</EnableUnmanagedDebugging>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="mscorlib" />
    <Reference Include="RemObjects.InternetPack">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.InternetPack.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.Server">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.Server.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.ZeroConf">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZeroConf.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="RemObjects.SDK.ZLib">
      <HintPath>C:\Program Files (x86)\RemObjects Software\RemObjects SDK for .NET\Bin\RemObjects.SDK.ZLib.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Data" />
    <Reference Include="System.Drawing" />
    <Reference Include="System.Windows.Forms" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Core">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Xml.Linq">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
    <Reference Include="System.Data.DataSetExtensions">
      <RequiredTargetFramework>3.5</RequiredTargetFramework>
    </Reference>
  </ItemGroup>
  <ItemGroup>
    <Compile Include="BusinessLogicLibrary_Intf.pas" />
    <Compile Include="BusinessLogicLibrary_Invk.pas" />
    <Compile Include="BusinessLogicService_Impl.pas">
      <SubType>Component</SubType>
      <DesignableClassName>SampleServer.BusinessLogicService</DesignableClassName>
    </Compile>
    <Compile Include="Main.pas">
      <SubType>Form</SubType>
      <DesignableClassName>SampleServer.MainForm</DesignableClassName>
    </Compile>
    <Compile Include="Main.Designer.pas">
      <SubType>Form</SubType>
      <DesignableClassName>SampleServer.MainForm</DesignableClassName>
    </Compile>
    <EmbeddedResource Include="properties\licenses.licx">
      <SubType>Content</SubType>
    </EmbeddedResource>
    <EmbeddedResource Include="Main.resx" />
    <Compile Include="Program.pas" />
    <Compile Include="Properties\AssemblyInfo.pas" />
    <EmbeddedResource Include="BusinessLogic.RODL">
      <SubType>Content</SubType>
    </EmbeddedResource>
    <Content Include="Properties\App.ico" />
    <EmbeddedResource Include="Properties\Resources.resx">
      <Generator>ResXFileCodeGenerator</Generator>
    </EmbeddedResource>
    <Compile Include="Properties\Resources.Designer.pas" />
    <None Include="Properties\Settings.settings">
      <Generator>SettingsSingleFileGenerator</Generator>
    </None>
    <Compile Include="Properties\Settings.Designer.pas" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Properties\" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\BusinessLogic\BusinessLogic.oxygene">
      <Name>BusinessLogic</Name>
      <Project>{fca57c06-f427-415f-988b-cb9aa3fd400c}</Project>
      <Private>True</Private>
      <HintPath>..\BusinessLogic\bin\Debug\BusinessLogic.dll</HintPath>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)\RemObjects Software\Oxygene\RemObjects.Oxygene.Echoes.targets" />
  <PropertyGroup>
    <PreBuildEvent />
  </PropertyGroup>
</Project>