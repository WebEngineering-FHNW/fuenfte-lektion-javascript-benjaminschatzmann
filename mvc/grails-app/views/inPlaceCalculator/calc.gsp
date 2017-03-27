<html>
  <head>
    <meta name="layout" content="form"/>
    <title>
      In-Place Calculator
    </title>
    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            var enElement = document.getElementById('en');

            function validateEn() {
                if(enElement != null && enElement.value < 1.0)
                {
                    alert('en value needs to be at least 1.0');
                    enElement.classList.add('error');
                }
            }

            enElement.onchange = validateEn;
        });
    </script>
  </head>
  <body>
  <form action="/inPlaceCalculator/calc" method="get">
    <fieldset class="form padded">

      <tmpl:form_row name="en"   label="En"   model="${calculatorInstance}" onchange="" />

      <tmpl:form_row name="exam" label="Exam" model="${calculatorInstance}" />

      <div>
        <label>&nbsp;</label>
        <input type="submit" value="Calculate"/>
      </div>
    </fieldset>
  </form>


  <div class="padded">
    <label>Result</label>
    <mvc:decorate grade="${calculatorInstance.result}">
      <output>${calculatorInstance.result}</output>
    </mvc:decorate>
  </div>


  </body>
</html>

