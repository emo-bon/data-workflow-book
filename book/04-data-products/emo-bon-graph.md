---
title: EMO-BON Graph
---

# EMO-BON Graph

The EMO-BON Graph is a knowledge graph that integrates and represents data from various EMO-BON Crates, providing a unified view of the observatory data, samples, sequences, and analyses. It leverages semantic web technologies to enable advanced querying and data interoperability.

The sparql endpoint for the EMO-BON Graph is available at:
- https://emobon-kb.vliz.be/repositories/kgap

Some examples of SPARQL queries that can be run against the EMO-BON Graph are:

## Query 1: List of Observatories

This query retrieves the list of observatories with their names, country, location (latitude, longitude, and Marine Regions Geographic Identifier - MRGID), and habitat information.

### SPARQL Query

```sparql
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX schema: <https://schema.org/>
PREFIX sosa: <http://www.w3.org/ns/sosa/>
PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>
PREFIX marineregions: <http://marineregions.org/mrgid/>

SELECT ?observatory ?name ?country ?lat ?long ?mrgid ?habitat
WHERE {
  ?observatory a sosa:Platform ;
               schema:name ?name .
  
  OPTIONAL { ?observatory schema:location/schema:addressCountry ?country . }
  OPTIONAL { ?observatory geo:lat ?lat . }
  OPTIONAL { ?observatory geo:long ?long . }
  OPTIONAL { ?observatory schema:location/schema:identifier ?mrgid . }
  OPTIONAL { ?observatory schema:additionalProperty/schema:name ?habitat . }
}
ORDER BY ?name
```

### Execute Query

<div id="query1-container">
  <button onclick="executeQuery1()" style="padding: 10px 20px; background-color: #0366d6; color: white; border: none; border-radius: 4px; cursor: pointer; margin-bottom: 10px;">
    Execute Query
  </button>
  <div id="query1-status" style="margin: 10px 0; font-style: italic; color: #666;"></div>
  <div id="query1-results" style="margin-top: 10px;"></div>
</div>

<script>
async function executeQuery1() {
  const endpoint = 'https://emobon-kb.vliz.be/repositories/kgap';
  const query = `
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX schema: <https://schema.org/>
PREFIX sosa: <http://www.w3.org/ns/sosa/>
PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>
PREFIX marineregions: <http://marineregions.org/mrgid/>

SELECT ?observatory ?name ?country ?lat ?long ?mrgid ?habitat
WHERE {
  ?observatory a sosa:Platform ;
               schema:name ?name .
  
  OPTIONAL { ?observatory schema:location/schema:addressCountry ?country . }
  OPTIONAL { ?observatory geo:lat ?lat . }
  OPTIONAL { ?observatory geo:long ?long . }
  OPTIONAL { ?observatory schema:location/schema:identifier ?mrgid . }
  OPTIONAL { ?observatory schema:additionalProperty/schema:name ?habitat . }
}
ORDER BY ?name
  `;
  
  const statusDiv = document.getElementById('query1-status');
  const resultsDiv = document.getElementById('query1-results');
  
  statusDiv.textContent = 'Executing query...';
  resultsDiv.innerHTML = '';
  
  try {
    const response = await fetch(endpoint, {
      method: 'POST',
      headers: {
        'Accept': 'application/sparql-results+json',
        'Content-Type': 'application/sparql-query'
      },
      body: query
    });
    
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    
    const data = await response.json();
    console.log('Query 1 Results:', data);
    
    statusDiv.textContent = `Query returned ${data.results.bindings.length} results`;
    
    if (data.results.bindings.length === 0) {
      resultsDiv.innerHTML = '<p>No results found.</p>';
      return;
    }
    
    // Create table
    let table = '<table style="width: 100%; border-collapse: collapse; margin-top: 10px;">';
    table += '<thead><tr style="background-color: #f6f8fa;">';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Observatory</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Name</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Country</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Latitude</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Longitude</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">MRGID</th>';
    table += '<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Habitat</th>';
    table += '</tr></thead><tbody>';
    
    data.results.bindings.forEach(row => {
      table += '<tr>';
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.observatory?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.name?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.country?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.lat?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.long?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.mrgid?.value || ''}</td>`;
      table += `<td style="border: 1px solid #ddd; padding: 8px;">${row.habitat?.value || ''}</td>`;
      table += '</tr>';
    });
    
    table += '</tbody></table>';
    resultsDiv.innerHTML = table;
    
  } catch (error) {
    console.error('Error executing query:', error);
    statusDiv.textContent = 'Error executing query';
    resultsDiv.innerHTML = `<p style="color: red;">Error: ${error.message}</p>
      <p>This may be due to CORS restrictions or network issues. Try accessing the endpoint directly at: 
      <a href="https://emobon-kb.vliz.be/repositories/kgap" target="_blank">https://emobon-kb.vliz.be/repositories/kgap</a></p>`;
  }
}
</script>

:::{note}
The interactive query execution above uses JavaScript to fetch data from the SPARQL endpoint. If you encounter CORS issues, you may need to access the endpoint directly or use a SPARQL client.
:::

