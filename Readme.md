# Документация проекта

## Описание проекта

Проект Task Manager представляет собой веб-приложение для управления задачами. Он разработан с использованием Django и Django REST Framework для создания RESTful API. Приложение поддерживает аутентификацию через JWT (JSON Web Token) и предоставляет базовый функционал для управления задачами, такой как создание, просмотр, обновление и удаление задач.

### Основные функции

1. **Аутентификация пользователей**
   - Для аутентификации используется JWT токен, который выдается после успешной аутентификации пользователя.

2. **Управление задачами**
   - **Создание задачи**: Пользователи могут создавать новые задачи, указывая заголовок, описание и статус задачи.
   - **Просмотр задач**: Пользователи могут просматривать список всех задач с подробной информацией о каждой задаче.
   - **Обновление задачи**: Пользователи могут изменять заголовок, описание и статус существующих задач.
   - **Удаление задачи**: Пользователи могут удалять задачи из системы.

### Технологии

Проект разработан с использованием следующих технологий:

- **Django**: Веб-фреймворк на основе Python для быстрой разработки веб-приложений.
- **Django REST Framework (DRF)**: Мощный и гибкий инструментарий для создания Web API.
- **JWT (JSON Web Token)**: Открытый стандарт (RFC 7519) для создания токенов доступа, основанный на JSON, который используется для аутентификации.

### Инструкции по запуску проекта

Чтобы запустить проект локально, выполните следующие шаги:

1. **Клонирование репозитория:**
   ```bash
   git clone <URL_репозитория>
   cd <название_папки_проекта>
   ```
2. **Создание Docker образа:**

   Соберите Docker образ, используя Dockerfile из проекта.
   ```bash
   docker build -t my-django-app .
   ```
   Эта команда соберет Docker образ с именем my-django-app.
3. **Запуск контейнера:**

   Запустите Docker контейнер, основанный на собранном образе.
   
   ```bash
   docker run -p 8000:8000 my-django-app
   ```
4. **Доступ к приложению:**
   После успешного запуска контейнера ваше приложение будет доступно по адресу:
   ```http
   http://0.0.0.0:8000/
   ```