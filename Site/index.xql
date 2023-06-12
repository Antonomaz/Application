xquery version "3.1";

module namespace idx="http://teipublisher.com/index";

declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace dbk="http://docbook.org/ns/docbook";

declare variable $idx:app-root :=
    let $rawPath := system:get-module-load-path()
    return
        (: strip the xmldb: part :)
        if (starts-with($rawPath, "xmldb:exist://")) then
            if (starts-with($rawPath, "xmldb:exist://embedded-eXist-server")) then
                substring($rawPath, 36)
            else
                substring($rawPath, 15)
        else
            $rawPath
    ;

(:~
 : Helper function called from collection.xconf to create index fields and facets.
 : This module needs to be loaded before collection.xconf starts indexing documents
 : and therefore should reside in the root of the app.
 :)
declare function idx:get-metadata($root as element(), $field as xs:string) {
    let $header := $root/tei:teiHeader
    let $year := substring($header//tei:bibl/tei:date[1]/@when/string(), 1, 4)
    let $id := substring-before($root/@xml:id, '_')
    return
        switch ($field)
            (:case "title" return
                string-join((
                    $header//tei:msDesc/tei:head, $header//tei:titleStmt/tei:title[@type = 'main'],
                    $header//tei:titleStmt/tei:title
                ), " - "):)
            case "printers" return
                $root/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title/tei:surname/string()[1]
            case "title" return
                $header//tei:titleStmt/tei:title[@type = 'main']
            case "publisher_rech" return
                $header//tei:bibl/tei:publisher/tei:persName/tei:surname
            case "commentaire" return head ((
                $header//tei:abstract/p[@source="Mazarine"],
                $header//tei:abstract/p[@source="Antonomaz"]
                ))
            case "subject" return
                $header//tei:keywords/tei:term[@type="subject"]
            case "genre_rech" return
                $header//tei:keywords/tei:term[@type="genre"]
            case "date_rech" return head((
                $header//tei:bibl/tei:date[@source="Carrier"]/@when,
                $header//tei:bibl/tei:date[@source="Carrier"]/@notBefore,
                $header//tei:bibl/tei:date[@source="Carrier"]/@notAfter,
                $header//tei:bibl/tei:date[@source="Antonomaz"]/@when,
                $header//tei:bibl/tei:date[@source="Antonomaz"]/@notBefore,
                $header//tei:bibl/tei:date[@source="Antonomaz"]/@notAfter,
                $header//tei:bibl/tei:date/@when
                ))
            case "author" return ((
                $header//tei:bibl//tei:author/tei:orgName,
                $header//tei:bibl//tei:author/tei:persName/tei:surname,
                $header//tei:bibl//tei:author/tei:persName/tei:addName,
                $header//tei:bibl//tei:author/tei:persName
            ))
            case "illustration" return 
                $header//tei:keywords/tei:term[@type="illustration"]/@subtype/string()
            case "handwritten" return 
                $header//tei:keywords/tei:term[@type="handwritten_note"]/@subtype/string()
            case "identifier" return 
                $id
            case "language" return ((
                    $header//tei:langUsage/tei:language/@ident,
                    $root/@xml:lang,
                    $header/@xml:lang
                ))
            case "date" return head((
                $header//tei:correspDesc/tei:correspAction/tei:date/@when,
                $header//tei:sourceDesc/(tei:bibl|tei:biblFull)/tei:publicationStmt/tei:date,
                $header//tei:sourceDesc/(tei:bibl|tei:biblFull)/tei:date/@when,
                $header//tei:fileDesc/tei:editionStmt/tei:edition/tei:date,
                $header//tei:publicationStmt/tei:date
            ))
            case "lieu" return head ((
                $header//tei:bibl/tei:pubPlace[not(@type='dubious')]/string()
                ))
            case "form" return head ((
                if (count($header//tei:term[@type='form']) = 2) then
                    'vers/prose'
                    else
                        $header//tei:term[@type='form']/text()
                ))
            case "year" return head ((
                    if (string-length($year) = 4) then
                        $year
                    else
                        "Sans Date"
                
                (:substring($header//tei:bibl/tei:date[1]/@when/string(), 1, 4),
                $header//tei:bibl/tei:date[1]/string():)
                ))
            (:case "genre" return head ((
                idx:get-genre($header),
                $root/dbk:info/dbk:keywordset[@vocab="#genre"]/dbk:keyword
            )):)
            case "publisher" return head ((
                $header//tei:bibl/tei:publisher//tei:addName/tei:surname/text(),
                $header//tei:bibl/tei:publisher//tei:addName//text(),
                $header//tei:bibl/tei:publisher/tei:persName/tei:surname/text(),
                $header//tei:bibl/tei:publisher/tei:persName/text(),
                $header//tei:bibl/tei:publisher/tei:orgName/text(),
                $header//tei:bibl/tei:publisher/text(),
                "Sans Nom"
                ))
            case "privilege" return ((
                if ($root//tei:imprimatur) then 
                    "oui"
                else 
                    "non"
                ))
            case "auteur" return head ((
                $header//tei:author/tei:orgName/text(),
                $header//tei:author/tei:orgName/tei:addName/text(),
                $header//tei:author/tei:persName/tei:surname/text(),
                $header//tei:author/tei:persName/tei:addName/text(),
                $header//tei:author/tei:persName/text(),
                "Inconnu"
                ))
            default return 
                ()
};

declare function idx:get-metadataS($root as element(), $field as xs:string) {
    let $header := $root/tei:teiHeader
    return
        switch ($field)
            (: case "auteur" return 
                for $aut in ((
                if (matches($header//tei:author/tei:persName/text(), "[a-zA-Z-]+")) then
                    $header//tei:author/tei:persName/text()
                else if (matches($header//tei:author/tei:orgName/text(), "[a-zA-Z-]+")) then
                        $header//tei:author/tei:orgName/text()
                    else if (matches($header//tei:author/tei:orgName/tei:addName/text(), "[a-zA-Z-]+")) then
                            $header//tei:author/tei:orgName/tei:addName/text()
                        else if (matches($header//tei:author/tei:persName/tei:surname/text(), "[a-zA-Z-]+")) then
                            $header//tei:author/tei:persName/tei:surname/text()
                            else if (matches($header//tei:author/tei:persName/tei:addName/text(), "[a-zA-Z-]+")) then
                                $header//tei:author/tei:persName/tei:addName/text()
                                else
                                    ''
                ))
                return
                    $aut
                :)
                
                case "auteur" return 
                for $aut in ((
                if (matches($header//tei:author/tei:orgName/tei:addName/text(), "[a-zA-Z-]+")) then
                            $header//tei:author/tei:orgName/tei:addName/text()
                    else if (matches($header//tei:author/tei:orgName/text(), "[a-zA-Z-]+")) then
                            $header//tei:author/tei:orgName/text()
                        else if (matches($header//tei:author/tei:persName/tei:addName/text(), "[a-zA-Z-]+")) then
                                $header//tei:author/tei:persName/tei:addName/text()
                            else if (matches($header//tei:author/tei:persName/tei:surname/text(), "[a-zA-Z-]+")) then
                                    $header//tei:author/tei:persName/tei:surname/text()
                                else if (matches($header//tei:author/tei:persName/text(), "[a-zA-Z-]+")) then
                                        $header//tei:author/tei:persName/text()
                                    else
                                        ''
                                        ))
                return
                    $aut
                    
                case "publisher" return
                    for $pub in ((
                        if (matches($header//tei:bibl/tei:publisher/tei:persName/tei:surname/text(), "[a-zA-Z-]+")) then
                            $header//tei:bibl/tei:publisher/tei:persName/tei:surname/text()
                        else if (matches($header//tei:bibl/tei:publisher/tei:persName/text(),"[a-zA-Z-]+")) then
                            $header//tei:bibl/tei:publisher/tei:persName/text()
                            else if (matches($header//tei:bibl/tei:publisher/tei:orgName/text(), "[a-zA-Z-]+")) then
                                $header//tei:bibl/tei:publisher/tei:orgName/text()
                                else if (matches($header//tei:bibl/tei:publisher/text(), "[a-zA-Z-]+")) then
                                    $header//tei:bibl/tei:publisher/text()
                                    else
                                        "Sans Nom"
                        ))
                    return
                        $pub
                
                case "genres" return
                    for $genre in ((
                        if (matches($header//tei:term[@type="genre"]/text(), "[a-zA-Z-]+")) then
                            $header//tei:term[@type="genre"]/text()
                        else
                            ''
                        ))
                    return
                        $genre
                
        default return 
                ()
};

(: if (matches($header//tei:author/tei:persName/text(), "[a-zA-Z-]+")) then
                    $header//tei:author/tei:persName/text() :)

declare function idx:get-genre($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#genre"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};
