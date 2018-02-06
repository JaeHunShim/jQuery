JQuery
===
* ### 공부방향
  * Javascript로 기본 문법등을 익히고 Jquery에서는 가장 활용도가 많은 이벤트 처리와 JQuery에서 지원하는 plug-in을 사용함으로서 좀더 숙달되게 사용할수 있는 개발자가 되기위한 연습 과정
  * JQuery는 홈페이지만 들어가도 알겠지만 어떠한 객체를쓰고 메소드를 쓰던지 "쉽게"라는 말이 꼭들어간다. 그만큼 JavaScript보다 훨씬 쉽게 동적처리를 쉽게 처리했다. JavaScript를 조금이나마 보았으면 쉽게 익힐수 있을 거라 생각된다.
  * JQuery도 마찬가지로 w3schools.com 에서 연습할수 있다.
---
* ### 기본(Basic)
  * #### $(document).ready()
    * 정의: 문서가 준비되면 매개변수로 넣은 콜백함수를 실행하라는 의미.
    * JavaScript에서 window.onload = function() 의 의미와 비슷하다.
  * #### 기본 선택자
    * **전체 선택자(*) :** 첫번째 매개변수에 바꾸고자하는 속성이름을 넣고 두번째에 스타일 속성값을 넣는다. 즉, 모든선택자가의 태그 value의 color를 red로 바꾼다.

          $(document).ready(function(){
            $('*').css('color','red');
          });
    * **태그 선택자**:HTML의 특정태그를 선택하는 선택자로 태그의 이름을 그냥 사용한다. 다른태그도 바꾸고 싶다면 'h3,p'이런식으로 써도 된다.

          $(document).ready(function(){
            $('h2').css('background-color','blue');
            $('h3').css('background-color','pink');
            $('h3, p').css('color','orange');
          });
    * **아이디 선택자**:특정한 id 속성이 있는 문서 객체를 선택하는 선택자이다.아이디 선택자를 사용할때에는 **#** 을 사용한다.

          $(document).ready(function(){
        		$('#target').css('color','green');
        		$('h2 ,#target2').css('background-color','yellow');
        	});
    * **클래스 선택자**: 아이디 선택자와 비슷한 개념이고 다른것은 #이 아닌 **.** 을 사용한다. 여기서는 h1태그에 class='item'의 속성을 바꾸는 부분이다.

          $(document).ready(function(){
        		$('h1.item').css('color','pink');
        	});
  * #### 자손 선택자와 후손 선택자
    * **자손선택자**: 만약에 body태그 밑에 div태그가 있다면 body태그의 자손인 div태그의 스타일 속성을 바꾸는 함수이다. 여기서 볼것은 **>** 로 자손을 선택하는 것이다.

          $(document).ready(function(){
            $('body > *').css('color','green');
          });
    * **후손 선택자**: 말그대로 후손을 선택하는 것으로 body태그의 *을 한다면 자손태그와는 다르게 body 밑의 모든 태그의 속성을 바꾸는 것이다.

          $(document).ready(function(){
        		$('body *').css('color','yellow');
        	});
  * #### 필터 선택자: 선택자 중에 ":" 기호를 포함하는 선택자
    * **입력 양식 필터 선택자**:input태그의 type속성에 따라서 문서객체를 선택할수 있는 방법 예제에서는 select 태그의 자손인 option 태그에 value값을 보는 예제로서 selcted 외에 여러가지 필터 선택자가 있다.
    <table>
      <tr>
        <th align="center">선택자 형태</th>
        <th align ="center"> 설명</th>
      </tr>
      <tr>
        <td>요소:button</td>
        <td>input 태그 중 type 속성이 button인 문서 객체와 button태그를 선택함</td>
      </tr>
      <tr>
        <td>요소:checkbox</td>
        <td>input 태그 중 type 속성이 checkbox인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:file</td>
        <td>input 태그 중 type 속성이 file인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:image</td>
        <td>input 태그 중 type 속성이 image인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:password</td>
        <td>input 태그 중 type 속성이 password인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:radio</td>
        <td>input 태그 중 type 속성이 radio인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:reset</td>
        <td>input 태그 중 type 속성이 reset인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:submit</td>
        <td>input 태그 중 type 속성이 text인 문서 객체를 선택함</td>
      </tr>

      <tr>
        <td>요소:text</td>
        <td>input 태그 중 type 속성이 text인 문서 객체를 선택함</td>
      </tr>
      <tr>
        <td>요소:checked</td>
        <td>체크되어 있는 입력양식을 선택한다.</td>
      </tr>
      <tr>
        <td>요소:disabled</td>
        <td>비활성화된 입력 양식을 선택한다.</td>
      </tr>
      <tr>
        <td>요소:enabled</td>
        <td>활성화된 입력 양식을 선택한다.</td>
      </tr>
      <tr>
        <td>요소:focus</td>
        <td>초점이 맞추어져 있는 입력양식을 선택한다.</td>
      </tr>
      <tr>
        <td>요소:input</td>
        <td>모든 입력양식을 선택한다(input,textarea,select,button)</td>
      </tr>
      <tr>
        <td>요소:selected</td>
        <td>option 객체중 선택된 태그를 선택한다.</td>
      </tr>

    </table>

          $(document).ready(function(){
            setTimeout(function(){
            var value = $('select>option:selected').val();

            alert(value);
            },5000);
          });
          <select>
            <option>Apple</option>
            <option>Banana</option>
            <option>Tomato</option>
            <option>Grape</option>
          </select>

          $(document).ready(function(){
            setTimeout(function(){
              var value1 = $('input:input').val();
              $('input:focus').css('background-color','green');
              alert(value1)
            },6000);
          });
      예제에서 처럼 val()메서드에 매개변수에 아무값도 넣지 않으면 입력양식의 value속성을 알아낼수 있다.
      많이 사용하는 것은 알아놓고 잘 생각이 안날때는 w3school에서 검색해서 그때그때마다 필요한것을 가져다쓰면 된다. 그러니 무엇이 있는지는 알고 있어야 검색할때 편할 것이다.
