# Postcrossing-pet-project
Целевой аудиторией данного приложения являются люди занимающиеся посткроссингом. Посткроссинг представляет собой случайный обмен открытками между людьми проживающими в любой точке мира. Обмен происходит с помощью отправки открыток обычными почтовыми службами. Приложение помогает в поиске людей для обмена и хранении информации связанной с ним. Так же стоит отметить что обмен не является симметричным(пользователь А отправляет открытку пользователю Б, при этом если пользователь Б решит отправить открытку, с большой долей вероятности в качестве получателя он получит другого пользователя). Данное приложение реализует следующий функионал:
* авторизация/аутентификация
* возможность редактирования личных данных
* подбор случайного получателя для открытки пользователя, 
* генерация регистрационного кода, который отправитель должен указать на открытке,
* регистрация получения открытки с помощью регистрационного кода,
* предоставление личной статистики обмена пользователя,
* предоставление глобальной статистики обмена,
* наличие система поощрения активных участников(чем больше открыток пользователя достигли адресата тем больше он может отправить, стартовое количество доступных для отправки открыток равно 5),
* наличие системы стремящейся сбалансировать количество отправленных/полученных пользователем открыток(пользователи чьи открытки были получены, помещаются в очередь и имеют приоритет на выбор их в качестве получателя)
* осуществление поиска открыток которые не были получены в течении 50 дней и изменении их статуса на "Утерянные"