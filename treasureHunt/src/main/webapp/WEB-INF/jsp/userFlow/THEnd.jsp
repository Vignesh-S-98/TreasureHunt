<title> End page</title>

<head>
    <style>
        html {
            font-family: cursive;
            background-color: rgb(201, 203, 210);
            cursor: default;
            user-select: none;
        }

        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        button{
        font-family: cursive; 
        font-size: large;
        padding: 12px 24px;
        border-radius: 10px;
        cursor: pointer;
        transition: background-color 0.5s, color 0.5s;
        border: none;
        background-color: rgba(239, 205, 11, 0.914);
        color:rgb(100, 149, 237);
        }
        button:hover{
            background-color: rgb(255, 217, 1);
            color: black;
        }
        h4{
            color: rgb(0, 0, 139);
            
        }
        h1{
            color: rgb(25, 25, 112);
        }
        p.no_gift{
            color: rgb(24, 140, 235);
            transition:  color 0.5s;
            
        }
        p.no_gift:hover{
            color: rgb(36, 95, 144);
        }
    </style>
</head>
<h4>Game ends</h4>
<h1 class="birthday"> Happy Birthday once again have a blast</h1>
<p class="play_again">feel free to play again </p>
<p class="no_gift">but no more gifts the next time</p>
<body>
    <form action="/game" method="get">
        <button type="submit">Let's play again</button>
</body>
