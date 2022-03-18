/// 
Class User.Test Extends %DeepSee.CubeDefinition [ DependsOn = dc.irisbi.covid19, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="Test" displayName="Test" disabled="false" abstract="false" sourceClass="dc.irisbi.covid19" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="CountryRegion" disabled="false" hasAll="false" allCaption="All CountryRegion" allDisplayName="CountryRegion" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="CountryRegion" disabled="false" sourceProperty="CountryRegion" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
        <property name="ProvinceState" disabled="false" sourceProperty="ProvinceState" hidden="false" isName="false" isDescription="false" isReference="false" useDisplayValue="false">
        </property>
        <property name="Lat" disabled="false" sourceProperty="Lat" hidden="false" isName="false" isDescription="false" isReference="false" useDisplayValue="false">
        </property>
        <property name="Long" disabled="false" sourceProperty="Long" hidden="false" isName="false" isDescription="false" isReference="false" useDisplayValue="false">
        </property>
      </level>
    </hierarchy>
  </dimension>
  <measure name="Recovered" disabled="false" sourceProperty="Recovered" aggregate="SUM" type="integer" hidden="false" searchable="false" factNumber="1">
  </measure>
</cube>
}

Parameter DOMAIN;

}
