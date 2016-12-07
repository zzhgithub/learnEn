;;; packages.el --- learnEn layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: 黑孩儿/周子豪 <zhouzihao@zbj.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `learnEn-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `learnEn/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `learnEn/pre-init-PACKAGE' and/or
;;   `learnEn/pst-init-PACKAGE' to cusomize the package as it is loaded.

;;; Code:

(defconst learnEn-packages
  '(youdao-dictionary)
  )

(defun learnEn/init-youdao-dictionary()
  (use-package youdao-dictionary
    :init
    (spacemacs/set-leader-keys "os" 'youdao-dictionary-search-at-point+)
    )
  )

;;; packages.el ends here
