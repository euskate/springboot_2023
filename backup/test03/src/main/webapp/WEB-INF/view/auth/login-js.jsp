<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<script>

    //로그인 submit
    function loginSubmit(){

        var params = {
            'un' : $.trim($("#loginId").val())
            ,'up' : $("#loginPw").val()
        }

        console.log(params);

        $.ajax({
            type : 'POST'
            ,url : '/auth/login-proc'
            ,dataType : 'json'
            ,data : params
            ,success : function(result) {
                console.log(result);
                if(result.resultCode != "00"){
                    alert(result.resultMessage);
                }

                else{
                    location.href=result.targetUrl;
                }

            },
            error: function(request, status, error) {

            }
        })
    }

</script>
