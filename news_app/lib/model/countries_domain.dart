class Country{
  const Country({required this.name, required this.domain});

  final String name;
  final String domain;  
}

const Country usa = Country(name: 'USA', domain: 'us');
const Country germany = Country(name: 'Germany', domain: 'de');
const Country japan = Country(name: 'Japan', domain: 'jp');
const Country russia = Country(name: 'Russia', domain: 'ru');
const Country turkey = Country(name: 'Turkey', domain: 'tr');
const Country poland = Country(name: 'Poland', domain: 'pl');

Set <Country> countriesDomains = {
  usa, germany, japan, russia, turkey, poland,
};

