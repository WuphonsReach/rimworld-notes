# Family Trees

Parent-child relationships within the colony.  Strictly about biological parents and children for tracking blood relations.

```mermaid
---
  config:
    class:
      hideEmptyMembersBox: true
---
flowchart
  Orange --> OrangeMarriage(birth)
  OrangeMarriage --> Red
  Nexia --> RedNexia(birth)
  Red --> RedNexia(birth)
  RedNexia --> Zebra
  RedNexia --> Stork
  Red --> RedAguirre(birth)
  Aguirre --> RedAguirre(birth)
  OrangeMarriage --> Green
  Orange --> OrangeIratha(birth)
  Iratha --> OrangeIratha(birth)
  OrangeIratha --> Blue
  Entasga --> EntasgaWanysh(birth)
  Wanysh --> EntasgaWanysh(birth)
  EntasgaWanysh --> Ra
  EntasgaWanysh --> Rytt
  EntasgaWanysh --> Rolu
  EntasgaWanysh --> Ren
  EntasgaWanysh --> Ryk
  RedAguirre --> Yellow
  Aguirre --> GreenAguirre(birth)
  Green --> GreenAguirre(birth) 
  GreenAguirre --> Cyan
```
