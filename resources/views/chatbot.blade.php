@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="mb-4 text-center text-primary">
        <i class="bi bi-robot me-2"></i>Chatbot Assistant
    </h1>

    <div class="card shadow-sm">
        <div class="card-body">
            <h5 class="card-title mb-3">Ask me anything!</h5>

            <div id="chatbox">
                <div id="chatDisplay">
                    <div class="chat-message chat-bot">
                        Hi! I can answer the following queries:
                        <ul class="mb-0">
                            <li>How many authors are there?</li>
                            <li>How many books are available?</li>
                            <li>List top 5 authors.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <form id="chatForm" class="mt-3">
                <div class="input-group">
                    <input type="text" id="userQuery" class="form-control" placeholder="Ask your question..." required>
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-send"></i> Send
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

@push('styles')
    <style>
        #chatbox {
            height: 400px;
            border: 1px solid #dee2e6;
            padding: 10px;
            overflow-y: auto;
            background-color: #f8f9fa;
            border-radius: 8px;
        }

        .chat-message {
            padding: 10px 15px;
            border-radius: 15px;
            max-width: 75%;
            margin-bottom: 10px;
            position: relative;
            animation: fadeIn 0.3s ease-in-out;
        }

        .chat-user {
            background-color: #0d6efd;
            color: white;
            align-self: flex-end;
            margin-left: auto;
        }

        .chat-bot {
            background-color: #e9ecef;
            color: #212529;
            align-self: flex-start;
            margin-right: auto;
        }

        #chatDisplay {
            display: flex;
            flex-direction: column;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
</style>
@endpush

@push('scripts')
    <script>
        document.getElementById('chatForm').addEventListener('submit', function (event) {
            event.preventDefault();

            const message = document.getElementById('userQuery').value;
            const chatDisplay = document.getElementById('chatbox');
            const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            const userMsg = document.createElement('div');
            userMsg.classList.add('chat-message', 'chat-user');
            userMsg.innerHTML = message;
            chatDisplay.appendChild(userMsg);

            fetch(`/chatbot/query`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken
                },
                body: JSON.stringify({ query: message })
            })
            .then(response => response.json())
            .then(data => {
                const botMsg = document.createElement('div');
                botMsg.classList.add('chat-message', 'chat-bot');
                botMsg.innerHTML = data.response;
                chatDisplay.appendChild(botMsg);

                document.getElementById('chatbox').scrollTop = chatDisplay.scrollHeight;
            })
            .catch(() => {
                const errorMsg = document.createElement('div');
                errorMsg.classList.add('chat-message', 'chat-bot');
                errorMsg.innerHTML = "Sorry, I didn't understand that.";
                chatDisplay.appendChild(errorMsg);
            });

            document.getElementById('userQuery').value = '';
        });
    </script>
@endpush

@endsection
