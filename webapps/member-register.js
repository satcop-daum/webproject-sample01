/**
 * 문서가 다 로드 되었을때 호출!
 */
$(function() {

    https://url.kr/ribsyp

    /**
     * 중복 확인 버튼을 클릭했을때 호출되는 이벤트
     */
    $('#checkIdButton').on('click', function() {

        const userId = $('#userId').val();

        if (userId === '') {
            alert(' 중복 확인할 아이디값을 입력해 주세요. ');
            return false;
        }

        if (userId.length < 4) {
            alert(' 아이디는 4자이상 입력해 주세요. ');
            return false;
        }

        const url = '/check-userid.jsp';
        const parameter = {
            userId: userId,
            pwd: '1234'
        }
        $.ajax({
            type: 'POST',
            url: url,
            data: parameter,
            success: function (res) {
                const jsonResult = JSON.parse(res);
                if (!jsonResult.result) {
                    alert(jsonResult.message);
                }

            },
            error: function (xmlHttpReqeust, status, errorThrow) {
                console.log(xmlHttpReqeust, status, errorThrow);
            }
        });
    });

    /**
     * 폼이 서버로 전송되기전(submit)에 호출되는 이벤트
     */
    $('#registerForm').on('submit', function() {

        const userPassword = $('#userPassword').val();
        const userRePassword = $('#userRePassword').val();

        if (userPassword != userRePassword) {
            alert(' 비밀번호 와 비밀번호 확인 값이 일치하지 않습니다. ');
            return false;
        }

        const parameter = {
            userId: $('#userId').val(),
            userPassword: userPassword,
            userName: $('#userName').val()
        };
        const url = '/ajax/member-register.jsp';

        $.ajax({
            type: 'POST',
            data: parameter,
            url: url,
            success: function (res) {
                console.log(res);
            },
            error: function (xmlHttpReqeust, status, errorThrow) {
                console.log(xmlHttpReqeust, status, errorThrow);
            }
        });

        return false;
    });

});