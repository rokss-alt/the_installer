1. Data Stream for Input
    - `STDIN – 0`
2. Data Stream for Output
    - `STDOUT – 1`
3. Data Stream for Output that relates to an error occurring.
    - `STDERR – 2`


Naudojant komanda [[find]] galima gauti error (STDEER-2), ir kad jo nerodytu ji nukreipiam /dev/null kas tiesiog panaikina tokia info


<> leidzia nukreipit info i kuria nors puse - pvz. cat < kazkas.txt

su >> galim prideti prie egzistuojancio failo