<section>
            <p>{{ msgNewContentAddon }}</p>
            <form id="formValues" action="#" method="post" class="form-horizontal" accept-charset="utf-8">
                <input type="hidden" name="lang" id="lang" value="{{ lang }}">
                <input type="hidden" value="{{ openQuestionID }}" id="openQuestionID" name="openQuestionID">
                
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="name">{{ msgNewContentName }}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="name" id="name" value="{{ defaultContentName }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="email">{{ msgNewContentMail }}</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" name="email" id="email" value="{{ defaultContentMail }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="rubrik">{{ msgNewContentCategory }}</label>
                    <div class="col-sm-9">
                        <select name="rubrik[]" class="form-control" id="rubrik" multiple="multiple" size="5" required>
                        {{ printCategoryOptions }}
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="question">{{ msgNewContentTheme }}</label>
                    <div class="col-sm-9">
                        <textarea class="form-control" cols="37" rows="3" name="question" id="question" required {{ readonly }}>{{ printQuestion }}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="answer">{{ msgNewContentArticle }}</label>
                    <div class="col-sm-9">
                        <textarea class="form-control" cols="37" rows="10" name="answer" id="answer" required></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="keywords">{{ msgNewContentKeywords }}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="keywords" id="keywords">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="contentlink">{{ msgNewContentLink }}</label>
                    <div class="col-sm-9">
                        <input type="url" class="form-control" name="contentlink" id="contentlink" placeholder="http://">
                    </div>
                </div>

                {{ captchaFieldset }}

                <div class="form-group">
                    <div class="col-sm-12 text-right">
                        <button class="btn btn-primary btn-lg" type="submit" id="submitfaq">
                            {{ msgNewContentSubmit }}
                        </button>
                    </div>
                </div>
            </form>

            <div id="loader"></div>
            <div id="faqs"></div>

        </section>

        <script src="{{ baseHref }}assets/js/add.js"></script>
        [enableWysiwygEditor]
        <script src="{{ baseHref }}admin/assets/js/editor/tinymce.min.js?{{ currentTimestamp }}"></script>
        <script src="{{ baseHref }}assets/js/editor.js"></script>
        [/enableWysiwygEditor]
