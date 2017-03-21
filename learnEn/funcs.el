;;;;define function to save the word to a note

;;自动加载类
(autoload 'youdao-dictionary--region-or-word "youdao-dictionary")
(autoload 'youdao-dictionary--format-result "youdao-dictionary")

;;单词存放位置 保证以后的 单词本中没有重复？
(defconst note-uri "../.note/words")
;;单词本位置 应该可以改成可以定制的
(defconst note "../note.org")

;;todo 将word 存入单词本
(defun learnEn//add-word-to-note (d)
  )

;;定义模
(define-derived-mode learnEn-mode org-mode "learn-En"
  "Major mode for learnEn.
\\{learnEn-mode-map}"
  (read-only-mode 1))

(with-eval-after-load 'org
  (setq learnEn-mode-map (copy-keymap org-mode-map))
  (with-eval-after-load 'evil
    (evil-define-key 'normal learnEn-mode-map "q" 'quit-window)))

;;
(defun learnEn//add-word-at-ponit ()
  (interactive)
  (let ((word (youdao-dictionary--region-or-word)))
    (if word
        (with-current-buffer (get-buffer-create "*Learn-En*")
          (let ((inhibit-read-only t))
            (erase-buffer)
            (learnEn-mode)
            (insert (youdao-dictionary--format-result word))
            (goto-char (point-min)))
          (switch-to-buffer-other-window "*Learn-En*"))
      (message "Nothing to look up"))))


