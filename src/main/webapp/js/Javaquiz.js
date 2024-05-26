const questions = [
    {
        question: "Number of primitive data types in Java are?",
        answers: [
            { text:"6", correct:false},
            { text:"7", correct:false},
            { text:"8", correct:true},
            { text:"9", correct:false}
        ]
    },
    {
        question: "What is the size of float and double in java?",
        answers: [
            { text:"32 and 64", correct:true},
            { text:"32 and 32", correct:false},
            { text:"64 and 64", correct:false},
            { text:"64 and 32", correct:false}
        ]
    },
    {
        question: "Automatic type conversion is possible in which of the possible cases?",
        answers: [
            { text:"Byte to int", correct:false},
            { text:"Int to long", correct:true},
            { text:"Long to int", correct:false},
            { text:"Short to int", correct:false}
        ]
    },
    {
        question: "Find the output of the following code. int Integer = 24; char String  = ‘I’; System.out.print(Integer); System.out.print(String);",
        answers: [
            { text:"Compile error", correct:false},
            { text:"Throws Exception", correct:false},
            { text:"I", correct:false},
            { text:"24 I", correct:true}
        ]
    },
    {
        question: "Find the output of the following program. public class Solution{ public static void main(String[] args){ short x = 10; x =  x * 5; System.out.print(x); } }",
        answers: [
            { text:"50", correct:false},
            { text:"10", correct:false},
            { text:"Compile error", correct:true},
            { text:"Exception", correct:false}
        ]
    },
    {
        question: "Find output of following program. public class Solution{ public static void main(String[] args){ byte x = 127; x++; x++; System.out.print(x); } }",
        answers: [
            { text:"-127", correct:true},
            { text:"127", correct:false},
            { text:"129", correct:false},
            { text:"2", correct:false}
        ]
    },
    {
        question: "Find the output of following program. public class Solution{ public static void main(String[] args){ int[] x = {120, 200, 016}; for(int i = 0; i < x.length; i++){  System.out.print(x[i] + “ “); } } }",
        answers: [
            { text:"120 200 016", correct:false},
            { text:"120 200 14", correct:true},
            { text:"120 200 16", correct:false},
            { text:"None", correct:false}
        ]
    },
    {
        question: "When an array is passed to a method, what does the method receive?",
        answers: [
            { text:"The reference of the array", correct:true},
            { text:"A copy of the array", correct:false},
            { text:"Length of the array", correct:false},
            { text:"Copy of first element", correct:false}
        ]
    },
    {
        question: "Select the valid statement to declare and initialize an array.",
        answers: [
            { text:"int[] A = {};", correct:false},
            { text:"int[] A = {1, 2, 3};", correct:true},
            { text:"int[] A = (1, 2, 3);", correct:false},
            { text:"int[][][] A = {1, 2, 3};", correct:false}
        ]
    },
    {
        question: "Arrays in Java are-",
        answers: [
            { text:"Object References", correct:false},
            { text:"Primitive data type", correct:false},
            { text:"Objects", correct:true},
            { text:"None", correct:false}
        ]
    },
    {
        question: "When is the object created with new keyword?",
        answers: [
            { text:"At runtime", correct:true},
            { text:"At compile time", correct:false},
            { text:"Depends on the code", correct:false},
            { text:"None", correct:false}
        ]
    },
    {
        question: "Identify the corrected definition of a package.",
        answers: [
            { text:"A package is a collection of editing tools", correct:false},
            { text:"A package is a collection of classes", correct:false},
            { text:"A package is a collection of classes and interfaces", correct:true},
            { text:"A package is a collection of interfaces", correct:false}
        ]
    },
    {
        question: "Identify the keyword among the following that makes a variable belong to a class,rather than being defined for each instance of the class.",
        answers: [
            { text:"final", correct:false},
            { text:"static", correct:true},
            { text:"volatile", correct:false},
            { text:"abstract", correct:false}
        ]
    },
    {
        question: " In which of the following is toString() method defined?",
        answers: [
            { text:"java.lang.Object", correct:true},
            { text:"java.lang.String", correct:false},
            { text:"java.lang.util", correct:false},
            { text:"None", correct:false}
        ]
    },
    {
        question: "Identify the return type of a method that does not return any value.",
        answers: [
            { text:"int", correct:false},
            { text:"double", correct:false},
            { text:"float", correct:false},
            { text:"void", correct:true}
        ]
    },
    {
        question: "Where does the system stores parameters and local variables whenever a method is invoked?",
        answers: [
            { text:"Heap", correct:false},
            { text:"Tree", correct:false},
            { text:"Stack", correct:true},
            { text:"Array", correct:false}
        ]
    },
    {
        question: "Identify the modifier which cannot be used for constructor.",
        answers: [
            { text:"public", correct:false},
            { text:"protected", correct:false},
            { text:"private", correct:false},
            { text:"static", correct:true}
        ]
    },
    {
        question: "What is the variables declared in a class for the use of all methods of the class called?",
        answers: [
            { text:"Object", correct:false},
            { text:"Instance variables", correct:true},
            { text:"Reference variables", correct:false},
            { text:"None", correct:false}
        ]
    },
    {
        question: "What is the implicit return type of constructor?",
        answers: [
            { text:"No return type", correct:false},
            { text:"void", correct:false},
            { text:"A class object in which it is defined", correct:true},
            { text:"None", correct:false}
        ]
    },
    {
        question: "When is the finalize() method called?",
        answers: [
            { text:"Before garbage collection", correct:true},
            { text:"Before an object goes out of scope", correct:false},
            { text:"Before a variable goes out of scope", correct:false},
            { text:"None", correct:false}
        ]
    },
    {
        question: "Identify the infinite loop.",
        answers: [
            { text:"for(;;)", correct:false},
            { text:"for(int i=0; i<1; i--)", correct:false},
            { text:"for(int i=0; ; i++)", correct:false},
            { text:"All of the above", correct:true}
        ]
    },
    {
        question: "What is Runnable?",
        answers: [
            { text:"Abstract class", correct:false},
            { text:"Interface", correct:true},
            { text:"Class", correct:false},
            { text:"Object", correct:false}
        ]
    },
    {
        question: "Exception created by try block is caught in which block?",
        answers: [
            { text:"catch", correct:true},
            { text:"throw", correct:false},
            { text:"final", correct:false},
            { text:"none", correct:false}
        ]
    },
    {
        question: "Which of the following exception is thrown when divided by zero statement is executed?",
        answers: [
            { text:"NullPointerException", correct:false},
            { text:"NumberFormatException", correct:false},
            { text:"ArithmeticException", correct:true},
            { text:"None", correct:false}
        ]
    },
    {
        question: "Identify the interface which is used to declare core methods in java?",
        answers: [
            { text:"Comparator", correct:false},
            { text:"EventListener", correct:false},
            { text:"Set", correct:false},
            { text:"Collection", correct:true}
        ]
    },
    {
        question: "Output of Math.floor(3.6)?",
        answers: [
            { text:"3", correct:false},
            { text:"3.0", correct:true},
            { text:"4", correct:false},
            { text:"4.0", correct:false}
        ]
    },
    {
        question: "Which of the following statements are true about finalize() method?",
        answers: [
            { text:"It can be called zero or one times", correct:true},
            { text:"It can be called exactly once", correct:false},
            { text:"It can be called zero or more times", correct:false},
            { text:"It can be called one or more times", correct:false}
        ]
    },
    {
        question: "What does the operator >>>> do?",
        answers: [
            { text:"Right shift operator", correct:false},
            { text:"Left shift operator", correct:false},
            { text:"Zero fill right shift", correct:true},
            { text:"Zero fill left shift", correct:false}
        ]
    },
    {
        question: "Identify the incorrect Java feature.",
        answers: [
            { text:"Object oriented", correct:false},
            { text:"Use of pointers", correct:true},
            { text:"Dynamic", correct:false},
            { text:"Architectural neural", correct:false}
        ]
    },
    {
        question: "Which of the following is used to find and fix bugs in the program?",
        answers: [
            { text:"JDK", correct:false},
            { text:"JRE", correct:false},
            { text:"JVM", correct:false},
            { text:"JDB", correct:true}
        ]
    }
];

const questionElement = document.getElementById("question");
const answerButtons = document.getElementById("answer");
const nextButton = document.getElementById("next");

let currentQuestionIndex = 0;
let score = 0;

function startQuiz(){
    currentQuestionIndex = 0;
    score = 0;
    nextButton.innerHTML = "Next";
    showQuestion();
}

function showQuestion(){
    resetState();
    let currentQuestion = questions[currentQuestionIndex];
    let questionNo = currentQuestionIndex + 1;
    questionElement.innerHTML = questionNo + ". " + currentQuestion.question;

    currentQuestion.answers.forEach(answer => {
        const button = document.createElement("button");
        button.innerHTML = answer.text;
        button.classList.add("btn");
        answerButtons.appendChild(button);
        if(answer.correct)
        {
            button.dataset.correct = answer.correct;
        }
        button.addEventListener("click", selectAnswer);
    });
}

function resetState(){
    nextButton.style.display = "none";
    while(answerButtons.firstChild){
        answerButtons.removeChild(answerButtons.firstChild);
    }
}

function selectAnswer(e){
    const selectedBtn = e.target;
    const isCorrect = selectedBtn.dataset.correct === "true";
    if(isCorrect){
        selectedBtn.classList.add("correct");
        score++;
    }
    else{
        selectedBtn.classList.add("incorrect");
    }
    Array.from(answerButtons.children).forEach(button => {
        if(button.dataset.correct === "true"){
            button.classList.add("correct");
        }
        button.disabled = true;
    });
    nextButton.style.display = "block";
}

function showScore(){
    resetState();
    questionElement.innerHTML = `You scored ${score} out of ${questions.length}! <br> To get CERTIFICATE score atleast 15`;
    nextButton.innerHTML = "Restart Quiz";
    nextButton.style.display = "block";
}
function handleNextButton(){
    currentQuestionIndex++;
    if(currentQuestionIndex < questions.length){
        showQuestion();
    }
    else{
        showScore();
    }

}
nextButton.addEventListener("click", () =>{
    if(currentQuestionIndex < questions.length){
        handleNextButton();
    }
    else{
        startQuiz();
    }
})

startQuiz();