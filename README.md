# Knowlix AI — Intelligent Document Knowledge Assistant

Knowlix AI is a full-stack, enterprise-grade AI document intelligence and summarization web application. It combines an ultra-fast FastAPI backend powered by Groq's low-latency inference engine with a React + Vite + Framer Motion interface.

Both the frontend and backend are unified and served from a single web server link!

---

## 🌟 Key Features

- **Single Unified Web Server**: Both the frontend application and backend API are hosted together at a single link: `http://localhost:8000`.
- **Interactive "What To Do" Prompt Box**: Upon uploading a document, ask any custom question or choose from quick action presets (*Action Items*, *Executive Brief*, *Core Qualifications*, *Explain Simply*).
- **Real-Time Alteration & Follow-up Q&A**: Alter or refine answers on the fly (*"Make it shorter"*, *"Format as bullet points"*, *"Elaborate on point 2"*) without re-uploading the file.
- **Deep Document Support**: Ingests PDF, DOCX, and TXT files (up to 10MB) with instant text extraction.
- **Default Black Theme & Customization**: Sleek pure black default background with particle space animation, plus switchable **White** and **Nebula Blue** themes.
- **Structured Tabs & Export**: View **AI Response / Work**, **Key Notes**, and **Document Summary**, copy with 1 click, or download complete formatted reports.
- **Secure Authentication**: Built-in user registration and login with bcrypt hashing and JWT tokens.

---

## 🚀 Running the Unified Web Server (Single Link)

The entire application runs from a single command:

### Option A: Using the 1-Click Launcher (Windows)
Double-click [run_unified.bat](file:///c:/Users/vimal/Documents/Knowlix%20AI%20knowledge%20assistant/run_unified.bat) in the project root.

### Option B: Terminal Command
```bash
cd backend
python -m uvicorn main:app --port 8000
```

Now open your browser:
👉 **[http://localhost:8000](http://localhost:8000)**

---

## 🛠️ Rebuilding the Frontend (Optional)

Whenever you make frontend changes and want to update the production bundle:
```bash
cd frontend
npm run build
```
The compiled build in `frontend/dist` will automatically be served by the backend at `http://localhost:8000`.

---

## ⚙️ Environment Configuration

Ensure your `backend/.env` file contains your Groq API key:
```env
GROQ_API_KEY=your_groq_api_key_here
JWT_SECRET=supersecret_key_change_in_production
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=1440
```
