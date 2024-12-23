<h1>Terraform Azure Virtual Network og Subnett</h1>

<p>Denne Terraform-konfigurasjonen setter opp et Azure Virtual Network og et Subnett i "Norway West"-regionen. Den er laget for å hjelpe deg med å raskt opprette og administrere nettverksressurser i Azure.</p>

<h2>Krav</h2>
<ul>
    <li><a href="https://www.terraform.io/" target="_blank">Terraform</a> (versjon 1.0 eller høyere)</li>
    <li>En Azure-konto og nødvendige legitimations for tilgang til Azure-ressursene.</li>
</ul>

<h2>Azure-oppsett</h2>
<p>Sørg for at du har et aktivt Azure-abonnement. Du må konfigurere Azure-legitimasjonen ved hjelp av Azure CLI eller miljøvariabler, da Terraform vil bruke disse legitimasjonene for å opprette ressursene i Azure.</p>

<h3>Autentisering med Azure CLI</h3>
<p>Hvis du ikke har autentisert deg ennå, kan du bruke følgende kommando:</p>
<pre><code>az login</code></pre>

<h2>Prosjektstruktur</h2>
<p>Dette prosjektet inneholder følgende filer:</p>
<pre><code>
.
├── main.tf            # Inneholder hovedressursene (VNet og Subnett)
├── variables.tf       # Definerer input-variablene for konfigurasjonen
├── variables.tfvars   # Gir verdier for variablene
├── outputs.tf         # Definerer output etter ressursoppretting
└── README.md          # Dokumentasjon for prosjektet
</code></pre>

<h3><code>main.tf</code></h3>
<p>Denne filen definerer de viktigste ressursene som skal opprettes i Azure, inkludert et virtuelt nettverk og et subnett. Den refererer til <code>variables.tf</code>-filen for konfigurasjon.</p>

<h3><code>variables.tf</code></h3>
<p>Denne filen inneholder definisjonene av variablene, inkludert:</p>
<ul>
    <li><code>region</code>: Azure-regionen hvor ressursene vil bli distribuert (standard er "Norway West").</li>
    <li><code>resource_group_name</code>: Navnet på ressursgruppen hvor det virtuelle nettverket og subnettet vil bli opprettet.</li>
</ul>

<h3><code>variables.tfvars</code></h3>
<p>Denne filen inneholder de faktiske verdiene for variablene definert i <code>variables.tf</code>. Den gjør det mulig å tilpasse konfigurasjonen ved å endre region og ressursgruppenavn.</p>

<h3><code>outputs.tf</code></h3>
<p>Denne filen definerer output-verdier som vil bli vist etter at Terraform har opprettet ressursene. Outputene inkluderer:</p>
<ul>
    <li>Navnet på det virtuelle nettverket</li>
    <li>Navnet på subnettet</li>
    <li>Adresseprefiksene for subnettet</li>
</ul>

<h2>Bruk</h2>

<h3>1. Klon prosjektet</h3>
<p>Klon dette prosjektet til din lokale maskin:</p>
<pre><code>git clone https://github.com/your-username/terraform-azure-vnet.git
cd terraform-azure-vnet</code></pre>

<h3>2. Initialiser Terraform</h3>
<p>Kjør <code>terraform init</code> for å initialisere arbeidskatalogen din. Denne kommandoen laster ned nødvendige leverandør-plugins.</p>
<pre><code>terraform init</code></pre>

<h3>3. Tilpass Variabler (Valgfritt)</h3>
<p>Du kan justere verdiene for ditt miljø ved å endre <code>variables.tfvars</code>-filen. For eksempel:</p>
<pre><code>resource_group_name = "min-unik-ressursgruppe"
region             = "Norway West"</code></pre>

<h3>4. Gjennomgå Utførelsesplanen</h3>
<p>Før du bruker konfigurasjonen, kan du kjøre følgende kommando for å se hva Terraform planlegger å gjøre:</p>
<pre><code>terraform plan</code></pre>

<h3>5. Bruk Konfigurasjonen</h3>
<p>Når du er fornøyd med planen, kan du bruke konfigurasjonen:</p>
<pre><code>terraform apply</code></pre>
<p>Terraform vil be om bekreftelse før den går videre. Skriv <code>yes</code> for å bekrefte.</p>

<h3>6. Se Output</h3>
<p>Etter at ressursene er opprettet, vil Terraform vise output-ene som er definert i <code>outputs.tf</code>. Disse inkluderer navnet på det virtuelle nettverket, subnettet og adresseprefiksene til subnettet.</p>

<h3>7. Ødelegg Ressursene (Valgfritt)</h3>
<p>Hvis du ikke lenger trenger ressursene, kan du ødelegge dem med følgende kommando:</p>
<pre><code>terraform destroy</code></pre>
<p>Terraform vil be om bekreftelse før den går videre. Skriv <code>yes</code> for å bekrefte.</p>

<h2>Tilpasning</h2>
<p>Du kan enkelt endre konfigurasjonen for å tilpasse den til dine behov:</p>
<ul>
    <li>Endre regionen i <code>variables.tf</code> eller <code>variables.tfvars</code> for å distribuere ressursene til en annen Azure-region.</li>
    <li>Modifiser adresseområdet for det virtuelle nettverket og adresseprefikset for subnettet i <code>main.tf</code>.</li>
</ul>

<h2>Merknader</h2>
<ul>
    <li>Sørg for at Azure-abonnementet ditt har tilstrekkelige ressurser (f.eks. IP-adresser) i den spesifiserte regionen.</li>
    <li>Denne konfigurasjonen er laget for et grunnleggende oppsett. For produksjonsmiljøer anbefales det å legge til ekstra konfigurasjoner for sikkerhet, overvåking og andre beste praksiser.</li>
</ul>

<h2>Bidrag</h2>
<p>Følg gjerne med på eventuelle problemer eller send pull-forespørsler dersom du har forbedringer eller feilrettinger for denne konfigurasjonen.</p>

<h2>Lisens</h2>
<p>Dette prosjektet er lisensiert under MIT-lisensen – se <a href="LICENSE">LICENSE</a> for detaljer.</p>

