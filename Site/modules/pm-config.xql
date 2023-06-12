
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-Antonomaz-web="http://www.tei-c.org/pm/models/Antonomaz/web/module" at "../transform/Antonomaz-web-module.xql";
import module namespace pm-Antonomaz-print="http://www.tei-c.org/pm/models/Antonomaz/fo/module" at "../transform/Antonomaz-print-module.xql";
import module namespace pm-Antonomaz-latex="http://www.tei-c.org/pm/models/Antonomaz/latex/module" at "../transform/Antonomaz-latex-module.xql";
import module namespace pm-Antonomaz-epub="http://www.tei-c.org/pm/models/Antonomaz/epub/module" at "../transform/Antonomaz-epub-module.xql";
import module namespace pm-printers-web="http://www.tei-c.org/pm/models/printers/web/module" at "../transform/printers-web-module.xql";
import module namespace pm-printers-print="http://www.tei-c.org/pm/models/printers/fo/module" at "../transform/printers-print-module.xql";
import module namespace pm-printers-latex="http://www.tei-c.org/pm/models/printers/latex/module" at "../transform/printers-latex-module.xql";
import module namespace pm-printers-epub="http://www.tei-c.org/pm/models/printers/epub/module" at "../transform/printers-epub-module.xql";
import module namespace pm-notices-web="http://www.tei-c.org/pm/models/notices/web/module" at "../transform/notices-web-module.xql";
import module namespace pm-notices-print="http://www.tei-c.org/pm/models/notices/fo/module" at "../transform/notices-print-module.xql";
import module namespace pm-notices-latex="http://www.tei-c.org/pm/models/notices/latex/module" at "../transform/notices-latex-module.xql";
import module namespace pm-notices-epub="http://www.tei-c.org/pm/models/notices/epub/module" at "../transform/notices-epub-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "Antonomaz.odd" return pm-Antonomaz-web:transform($xml, $parameters)
case "printers.odd" return pm-printers-web:transform($xml, $parameters)
case "notices.odd" return pm-notices-web:transform($xml, $parameters)
    default return pm-Antonomaz-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "Antonomaz.odd" return pm-Antonomaz-print:transform($xml, $parameters)
case "printers.odd" return pm-printers-print:transform($xml, $parameters)
case "notices.odd" return pm-notices-print:transform($xml, $parameters)
    default return pm-Antonomaz-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "Antonomaz.odd" return pm-Antonomaz-latex:transform($xml, $parameters)
case "printers.odd" return pm-printers-latex:transform($xml, $parameters)
case "notices.odd" return pm-notices-latex:transform($xml, $parameters)
    default return pm-Antonomaz-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "Antonomaz.odd" return pm-Antonomaz-epub:transform($xml, $parameters)
case "printers.odd" return pm-printers-epub:transform($xml, $parameters)
case "notices.odd" return pm-notices-epub:transform($xml, $parameters)
    default return pm-Antonomaz-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    