<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <sch:title>Kontrola vybraných pravidel ISDOC</sch:title>
   <sch:ns uri="http://isdoc.cz/namespace/2013" prefix="isdoc"/>
   <sch:pattern>
      <sch:title>Vazba na původní doklad</sch:title>
      <sch:rule context="isdoc:Invoice[isdoc:DocumentType = (2,3,6)]">
            <sch:assert test="isdoc:OriginalDocumentReferences/*">Pro typ dokladu 2, 3 a 6 musí existovat vazba na původní doklad. Konkrétně tedy pro
            DocumentType = 2, 3, 6 musí existovat element
            OriginalDocumentReference a musí byt neprázdný.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Konzistentní uvádění cizí měny</sch:title>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:LineExtensionAmount]">
            <sch:assert test="isdoc:LineExtensionAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:LineExtensionAmountTaxInclusive]">
            <sch:assert test="isdoc:LineExtensionAmountTaxInclusiveCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:DepositAmount]">
            <sch:assert test="isdoc:DepositAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxableDepositAmount]">
            <sch:assert test="isdoc:TaxableDepositAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxInclusiveDepositAmount]">
            <sch:assert test="isdoc:TaxInclusiveDepositAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxAmount]">
            <sch:assert test="isdoc:TaxAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxableAmount]">
            <sch:assert test="isdoc:TaxableAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxInclusiveAmount]">
            <sch:assert test="isdoc:TaxInclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:AlreadyClaimedTaxableAmount]">
            <sch:assert test="isdoc:AlreadyClaimedTaxableAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:AlreadyClaimedTaxAmount]">
            <sch:assert test="isdoc:AlreadyClaimedTaxAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:AlreadyClaimedTaxInclusiveAmount]">
            <sch:assert test="isdoc:AlreadyClaimedTaxInclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:DifferenceTaxableAmount]">
            <sch:assert test="isdoc:DifferenceTaxableAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:DifferenceTaxAmount]">
            <sch:assert test="isdoc:DifferenceTaxAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:DifferenceTaxInclusiveAmount]">
            <sch:assert test="isdoc:DifferenceTaxInclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:TaxExclusiveAmount]">
            <sch:assert test="isdoc:TaxExclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:AlreadyClaimedTaxExclusiveAmount]">
            <sch:assert test="isdoc:AlreadyClaimedTaxExclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:DifferenceTaxExclusiveAmount]">
            <sch:assert test="isdoc:DifferenceTaxExclusiveAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:PayableRoundingAmount]">
            <sch:assert test="isdoc:PayableRoundingAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:PaidDepositsAmount]">
            <sch:assert test="isdoc:PaidDepositsAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]//*[isdoc:PayableAmount]">
            <sch:assert test="isdoc:PayableAmountCurr">Doklad vystavený v cizí měně musí obsahovat v cizí měně i všechny finanční elementy.
          Konkrétně: pokud existuje element ForeignCurrencyCode, pak musí existovat
          všechny elementy s částkami pro cizí měnu tj. ty končící na Curr.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Konzistentní uvádění tuzemské měny</sch:title>
      <sch:rule context="isdoc:Invoice[not(isdoc:ForeignCurrencyCode)]">
            <sch:assert test="isdoc:CurrRate = 1">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="isdoc:RefCurrRate = 1">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
          </sch:rule>
      <sch:rule context="isdoc:Invoice[not(isdoc:ForeignCurrencyCode)]">
            <sch:assert test="not(.//isdoc:LineExtensionAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:LineExtensionAmountTaxInclusiveCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:DepositAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxableDepositAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxInclusiveDepositAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxableAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxInclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:AlreadyClaimedTaxableAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:AlreadyClaimedTaxAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:AlreadyClaimedTaxInclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:DifferenceTaxableAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:DifferenceTaxAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:DifferenceTaxInclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:TaxExclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:AlreadyClaimedTaxExclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:DifferenceTaxExclusiveAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:PayableRoundingAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:PaidDepositsAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
            <sch:assert test="not(.//isdoc:PayableAmountCurr)">Doklad vystavený v tuzemské měně nesmí obsahovat žádný element v cizí měně. Pokud
          neexistuje element ForeignCurrencyCode, pak nesmí existovat žádný element pro
          cizí měnu, tj. element končící na Curr. Položky s kursem (CurrRate
            i RefCurrRate) musí být rovny hodnotě 1.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Tuzemská a zahraniční měna musí být rozdílná</sch:title>
      <sch:rule context="isdoc:Invoice[isdoc:ForeignCurrencyCode]">
            <sch:assert test="isdoc:ForeignCurrencyCode != isdoc:LocalCurrencyCode">U dokladu v zahraniční měně nesmí být měna lokální a zahraniční shodné. Konkrétně
          hodnota povinné položky LocalCurrencyCode se nesmí rovnat hodnotě nepovinné
          položky ForeignCurrencyCode.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Nedaňový doklad nesmí obsahovat řádkové položky podléhající DPH</sch:title>
      <sch:rule context="isdoc:Invoice[isdoc:VATApplicable = 'false']">
            <sch:assert test="every $va in isdoc:InvoiceLines/isdoc:InvoiceLine/isdoc:ClassifiedTaxCategory/isdoc:VATApplicable satisfied $va = 'false'">Je-li doklad nedaňový (element VATApplicable obsahuje hodnotu
            false), musejí být i všechny jeho řádkové položky nedaňové, tedy
          element VATApplicable uvnitř elementu ClassifiedTaxCategory rovněž
          obsahuje hodnotu false. Obráceně to však neplatí – na dokladu
          podléhajícím DPH mohou být jednotlivé položky, které nejsou v evidenci DPH.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Jednotky jednotlivých šarží v jedné řádce musí být stejné a odpovídat jednotce
            množství pro celou řádku</sch:title>
      <sch:rule context="isdoc:Invoice/isdoc:InvoiceLines/isdoc:InvoiceLine[isdoc:Item/isdoc:StoreBatches]">
            <sch:assert test="count(distinct-values(isdoc:Item/isdoc:StoreBatches/isdoc:StoreBatch/isdoc:Quantity/@unitCode)) le 1">Jednotka v rozpisu všech šarží/sériových čísel (element StoreBatches) musí
          být stejná jako jednotka pro množství na řádce faktury. Jednotky u šarží jedné řádky
          faktury musí být stejné. Pokud atribut pro jednotku v rozpisu šarží/sériových čísel není
          uveden, tak se předpokládá, že je množství uvedeno ve stejné jednotce jako množství na
          řádce faktury. </sch:assert>
            <sch:assert test="if (isdoc:InvoicedQuantity/@unitCode) then                                 every $q in isdoc:Item/isdoc:StoreBatches/isdoc:StoreBatch/isdoc:Quantity) satisfies $q/@unitCode = isdoc:InvoicedQuantity/@unitCode                               else true()">Jednotka v rozpisu všech šarží/sériových čísel (element StoreBatches) musí
          být stejná jako jednotka pro množství na řádce faktury. Jednotky u šarží jedné řádky
          faktury musí být stejné. Pokud atribut pro jednotku v rozpisu šarží/sériových čísel není
          uveden, tak se předpokládá, že je množství uvedeno ve stejné jednotce jako množství na
          řádce faktury. </sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Součet množství za jednotlivé šarže musí odpovídat množství za celou řádku</sch:title>
      <sch:rule context="isdoc:Invoice/isdoc:InvoiceLines/isdoc:InvoiceLine[isdoc:Item/isdoc:StoreBatches]">
            <sch:assert test="sum(isdoc:Item/isdoc:StoreBatches/isdoc:StoreBatch/isdoc:Quantity) = isdoc:InvoicedQuantity">Součet Quantity ze všech záznamů rozpisu šarží/sériových čísel musí
          odpovídat InvoicedQuantity dané řádky faktury.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Sekundární identifikace zboží může být uvedena pouze v případě, že je uvedena
            i primární</sch:title>
      <sch:rule context="isdoc:Invoice/isdoc:InvoiceLines/isdoc:InvoiceLine/isdoc:Item[isdoc:SecondarySellersItemIdentification]">
            <sch:assert test="isdoc:SellersItemIdentification">Nepovinnou položku SecondarySellersItemIdentification lze uvést pouze
          v případě, že je uvedena také položka SellersItemIdentification.</sch:assert>
          </sch:rule>
   </sch:pattern>
   <sch:pattern>
      <sch:title>Terciální identifikace zboží může být uvedena pouze v případě, že je uvedena
            i primární a sekundární</sch:title>
      <sch:rule context="isdoc:Invoice/isdoc:InvoiceLines/isdoc:InvoiceLine/isdoc:Item[isdoc:TertiarySellersItemIdentification]">
            <sch:assert test="isdoc:SellersItemIdentification and isdoc:SecondarySellersItemIdentification">Nepovinnou položku TertiarySellersItemIdentification lze uvést pouze
          v případě, že jsou uvedeny také položky SellersItemIdentification a
            SecondarySellersItemIdentification.</sch:assert>
          </sch:rule>
   </sch:pattern>
</sch:schema>