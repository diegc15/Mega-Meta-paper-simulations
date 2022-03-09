# Original runs

#asreview simulate data/brouwer_clean.csv -s simulation_output/nb_tf-idf.h5 --model nb --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --n_prior_included 10 --n_prior_excluded 10
#asreview simulate data/brouwer_clean.csv -s simulation_output/lr_tf-idf.h5 --model logistic --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --n_prior_included 10 --n_prior_excluded 10



# Runs from NB switchpoint (257+50)

SWITCHSTATE="28065 16735 10124 43062 29153 12013 34962 45599 15007 30358 6076 35476 42384 1409 36711 10935 8100 34166 21335 3023 31313 27937 29148 46063 44217 43564 11685 23546 16531 13393 16037 7460 16226 26603 13543 27987 30552 31135 31136 27041 29228 2711 12990 7050 17679 13581 31205 16276 15737 23946 11394 15555 30462 15720 9980 914 16221 11768 10911 23689 32432 13308 18606 13394 46375 10864 28096 3403 28238 2894 29619 14093 15661 24177 25978 28124 12307 16610 32010 19098 15978 10231 22861 10804 10209 15082 27483 18991 28574 2819 24038 26602 28054 24191 3372 28484 14014 15906 15865 10630 3373 29782 15948 16456 21489 28143 12062 16368 28542 25730 24991 46373 20956 23217 10741 29208 46345 19684 22601 10742 9167 7459 14298 31408 45536 13739 16421 28498 31198 22801 2647 31125 4849 13533 27081 2701 31204 12186 10389 22884 10890 43966 20962 9272 26803 45192 1902 11179 25184 15497 7699 12087 12243 32443 14385 35628 44341 27096 29424 43243 14733 45535 29368 15159 29797 10729 45912 10263 9269 12460 880 28585 30551 9659 43356 8093 29800 20948 10147 24844 30262 17809 10835 28271 19623 27172 27050 10738 9845 11548 43183 711 26092 29308 15673 24328 27014 38104 46090 43601 27866 14747 2818 13294 13295 15332 10862 10235 10184 44436 11546 10978 16263 14748 7385 10722 11075 27526 29986 46091 27950 7488 16575 31225 16207 46004 6835 10274 12076 28694 10759 24611 15556 11529 18226 28635 2686 32044 13228 28592 13520 16574 13293 11833 42281 28287 11025 27889 25798 42919 16186 30433 12845 29543 3992 2150 10783 29205 42639 7852 11326 46374 25675 29864 9526 9925 8670 14798 12907 14026 19619 10660 14046 2105 14104 2700 16136 27102 45179 12229 16402 16309 14757 45515 32023 13085 5225 23264 1490 7487 31397 14876 17803 30624 37377 28095 11351 28870 30073 29873 10422 10119 28760 43148 15719 28120 14765 29058 41874 29223 15364 1613 23336 17590 13652 45514 24555 30635 2103 27553 2095 11055 10737 16224 10088 10620 7184"

mkdir simulation_output/NB/

asreview simulate data/brouwer_clean.csv -s simulation_output/NB/nb_tf-idf.h5 --model nb --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/lr_tf-idf.h5 --model logistic --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/svm_tf-idf.h5 --model svm --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/rf_tf-idf.h5 --model rf --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/lr_sbert.h5 --model logistic --feature_extraction sbert --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/nn_sbert.h5 --model nn-2-layer --feature_extraction sbert --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/rf_doc2vec.h5 --model rf --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/lr_doc2vec.h5 --model lr --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/nn_doc2vec.h5 --model nn-2-layer --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/power-cnn_wide-doc2vec.h5 --model power_cnn --feature_extraction wide_doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/NB/lr_doc2vec.h5 --model logistic --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE


# Runs from LR switchpoint (367 + 50)

SWITCHSTATE="28065 16735 10124 43062 29153 12013 34962 45599 15007 30358 6076 35476 42384 1409 36711 10935 8100 34166 21335 3023 31313 27937 29148 43564 16531 13393 23946 31135 7460 31136 26603 13543 30552 27987 44217 16221 17679 29228 23689 7050 15737 9980 15978 27041 46063 11768 46375 3803 21489 15720 18606 13308 3403 13394 14093 2701 12990 13581 31205 28238 29619 32010 19098 28096 10660 11685 23546 16226 12307 16276 11394 2819 24191 2894 12845 914 28484 10231 17809 25978 16037 16309 32432 24177 10864 30462 13293 24038 13533 15661 28542 15948 32044 14014 27096 14026 12243 10659 10630 10209 10783 15906 45179 29782 14798 29322 2711 14199 12165 15159 20956 18588 10890 27483 16421 22861 28054 10263 29800 7459 31408 2700 14298 12460 17055 3372 15555 16368 25730 9468 32443 12062 15082 31198 15865 32127 20962 31103 28087 28143 4849 12135 30507 16136 29797 27102 574 5903 29368 14748 11888 29900 28574 28124 14733 10911 28208 27553 10804 9500 9526 16610 19623 14385 16456 43966 31125 14766 24152 46345 25184 26803 3652 10147 18991 35628 13739 9745 43243 43835 29205 30262 43601 14752 25591 11750 11179 14338 9167 14747 27889 37377 12087 24991 42281 22155 11554 14919 26092 22884 11548 23217 27081 24611 29308 22601 12076 7699 27172 45912 30690 45877 22801 11833 43356 29058 1902 11752 43183 20221 45538 42712 13517 16263 10742 29867 15497 46088 23052 46374 21234 23576 11351 45192 11983 21391 26745 13069 46373 28694 24555 18226 10741 29707 28271 2647 11529 14299 11864 11546 2105 13202 9272 12907 711 4913 11517 28498 19664 2686 45810 13233 25675 6978 11089 903 16574 15719 43602 44733 28095 28569 9269 46090 45536 10184 19684 30260 25431 10701 12133 17803 10738 29166 45758 13603 17987 44436 20584 10862 7673 34424 9490 29208 20585 11075 31204 11547 27866 23245 2818 13294 13295 16575 10235 42639 7488 20593 5408 27877 10722 12303 46091 28592 27950 15332 44385 16186 29084 12229 13520 13437 28040 19661 10274 20586 10978 11150 16402 45045 14073 9829 29223 27014 12186 29873 14916 8670 9503 568 29543 9611 29622 9845 28585 41874 15556 880 5018 27050 16102 14765 30551 28595 20591 31687 28870 16555 10018 15422 25338 9989 27143 27526 16717 1613 12481 21419 26602 16207 2596 13338 9951 8566 30020 10149 43479 18266 13055 45302 31225 11938 9925 10119 20590 43389 16545 24844 13625 10707 11298 29321 45164 14876 15252 28287 11385 10097 32023 10968 45535 30009 15364 13370 45495 29210 16092 28631 24553 30624 4192 45515 30073 43507 11862 11326 26510 23428 29413 29555 24529 5699 21418 44707 23484 11382 20718 15363 10293 11166 46205 15980 20950 20587 9712 10058 14800"

mkdir simulation_output/LR/

asreview simulate data/brouwer_clean.csv -s simulation_output/LR/nb_tf-idf.h5 --model nb --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/lr_tf-idf.h5 --model logistic --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/svm_tf-idf.h5 --model svm --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/rf_tf-idf.h5 --model rf --feature_extraction tfidf --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/lr_sbert.h5 --model logistic --feature_extraction sbert --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/nn_sbert.h5 --model nn-2-layer --feature_extraction sbert --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/rf_doc2vec.h5 --model rf --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/lr_doc2vec.h5 --model lr --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/nn_doc2vec.h5 --model nn-2-layer --feature_extraction doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE
asreview simulate data/brouwer_clean.csv -s simulation_output/LR/power-cnn_wide-doc2vec.h5 --model power_cnn --feature_extraction wide_doc2vec --n_queries min --init_seed 400 --seed 200 --prior_idx $SWITCHSTATE