# ⚡ Быстрые Команды - Streamlit Cloud Deploy

**Скопируйте и выполните по порядку**

---

## 📋 Шаг 1: GitHub (PowerShell на Windows)

```powershell
# Перейти в папку проекта
cd C:\Users\oskol\Documents\GitHub\officials_tracker

# Инициализация Git
git init

# Добавить все файлы
git add .

# Создать первый коммит
git commit -m "Initial commit - Officials Tracker v1.8.0"

# Создать main ветку
git branch -M main

# ВАЖНО: Замените YOUR_USERNAME на ваш GitHub username!
git remote add origin https://github.com/YOUR_USERNAME/officials-tracker.git

# Отправить на GitHub
git push -u origin main
```

**⚠️ При запросе пароля используйте GitHub Personal Access Token!**

---

## 🔑 Создание GitHub Token (делать один раз)

1. Откройте: https://github.com/settings/tokens
2. **"Generate new token"** → **"Tokens (classic)"**
3. Note: `officials-tracker`
4. Expiration: `No expiration`
5. Галочка на: `repo` (все подпункты)
6. **"Generate token"**
7. **СКОПИРУЙТЕ токен** (больше не покажется!)
8. Используйте его вместо пароля при `git push`

---

## ☁️ Шаг 2: Streamlit Cloud (через браузер)

### 2.1. Зайти на Streamlit Cloud:
```
https://share.streamlit.io/
```

### 2.2. Sign in with GitHub

### 2.3. Deploy New App:
- **Repository:** `YOUR_USERNAME/officials-tracker`
- **Branch:** `main`
- **Main file path:** `app.py`
- Нажать **"Deploy!"**

### 2.4. Дождаться деплоя (2-5 минут)

### 2.5. Получить URL:
```
https://YOUR_USERNAME-officials-tracker.streamlit.app
```

---

## 🔄 Обновление Данных (когда нужно)

```powershell
# Импортировать новый CSV
cd C:\Users\oskol\Documents\GitHub\officials_tracker
python scripts\import_from_csv.py list_officials.csv

# Загрузить на GitHub
git add data/
git commit -m "Updated data - $(Get-Date -Format 'yyyy-MM-dd')"
git push

# Streamlit Cloud автоматически обновится через 2-3 минуты
```

---

## 👥 Для Коллег

**Просто отправьте им ссылку:**
```
https://your-username-officials-tracker.streamlit.app
```

**Они:**
1. Открывают в браузере
2. Работают сразу
3. Ничего не устанавливают

---

## 🆘 Если Что-то Пошло Не Так

### Ошибка: "fatal: remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/officials-tracker.git
git push -u origin main
```

### Ошибка: "Authentication failed"
```
Используйте GitHub Token вместо пароля!
Создайте на: https://github.com/settings/tokens
```

### Ошибка на Streamlit Cloud: "ModuleNotFoundError"
```
Проверьте что все пакеты в requirements.txt
Если нужно добавить:
1. Отредактируйте requirements.txt
2. git add requirements.txt
3. git commit -m "Added missing package"
4. git push
```

### Приложение "засыпает"
```
Это нормально на бесплатном плане.
Просто откройте URL - проснётся за 30 секунд.
```

---

## ✅ Проверка Что Всё Работает

1. Откройте ваш URL в браузере
2. Видите главную страницу? ✅
3. Попробуйте добавить упоминание ✅
4. Видите все данные? ✅
5. Отправьте URL коллеге ✅
6. Коллега может открыть? ✅

**Всё работает!** 🎉

---

## 📞 Нужна Помощь?

Напишите мне на каком шаге застряли!
