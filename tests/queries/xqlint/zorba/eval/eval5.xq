
import module namespace refl = "http://www.zorba-xquery.com/modules/reflection";

declare function local:eval($query as xs:string, $someparam as xs:integer) 
{
  let $x := $someparam 
  return refl:eval($query)
};


for $y in 1 to 6
return 
  local:eval("for $i in 1 to $x where $i < 4 return $i", $y)
