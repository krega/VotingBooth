
<%@include file="/WEB-INF/view/template/header.jsp" %>

<link href="<c:url value="/resources/css/CreateVote.css" />" rel="stylesheet">
<form>

<section id="createVote">

    <div class="wrapper aligned">
        <div class="box item1" >

            <span class="label label-info" id="topic-label">Topic</span>
            <input type="topic" class="form-control" id="topic-form">
        </div>
            <div class="box item2">
                <button type="button" class="btn btn-primary1"  >Apple</button>
                <button type="button" class="btn btn-primary2" >Samsung</button>
            </div>

        <div class="box item4" >Four</div>
        <div class="box item5">Five</div>
    </div>


</section>
</form>




<%@include file="/WEB-INF/view/template/footer.jsp" %>
