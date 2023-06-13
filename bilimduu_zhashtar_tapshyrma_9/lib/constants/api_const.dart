class ApiConst{
  static String weatherAddress ({required double lat, required double lon}) => 'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String weatherUrl (String name) {return 'https://api.openweathermap.org/data/2.5/weather?q=$name,&appid=41aa18abb8974c0ea27098038f6feb1b';} 
  
  static String getIcon(String iconData, int iconZize){
    return 'https://openweathermap.org/img/wn/$iconData@${iconZize}x.png';
  }
}