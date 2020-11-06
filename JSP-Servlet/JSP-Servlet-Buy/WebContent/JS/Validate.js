function checkBox(){
	let fullName = document.getElementById('fullname').value;
	let userName = document.getElementById('username').value;
	let age = document.getElementById('age').value;
	let gender = '';
	if(document.getElementById('male').checker){
		gender = document.getElementById('male');
	}else if (document.getElementById('female').checker){
		gender = document.getElementById('female');
	}
	let passWord = document.getElementById('password').value;
	
	if(fullName.trim().lenght<5){
		document.getElementById('fullName-error').innerHTML = 'Họ và tên không được nhỏ hơn 5 kí tự';
		fullName='';
	}else{
		document.getElementById('fullName-error').innerHTML = '';
	}
}