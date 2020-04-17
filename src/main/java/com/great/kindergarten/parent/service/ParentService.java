package com.great.kindergarten.parent.service;

import com.great.kindergarten.commons.entity.*;
import com.great.kindergarten.healther.resultbean.MealPage;
import com.great.kindergarten.parent.mapper.ParentMapper;
import com.great.kindergarten.security.resultbean.PickUpInfoDetailPage;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author Administrator
 */
@Service
public class ParentService {

    @Resource
    private ParentMapper parentMapper;

    public ParentService()
    {

    }


    /**
     *  根据搜索条件找到对应的孩子体检列表
     * @param searchCondition
     * @return
     */
    public TableDate findExaminationByStudentId(SearchCondition searchCondition){

        Integer startPage = (searchCondition.getPage() -1) *searchCondition.getLimit();
        searchCondition.setPage(startPage);

        TableDate tableDate = new TableDate();
        //计算有几个条数
        tableDate.setCount(parentMapper.countExaminationByStudentId(searchCondition));
        //放入数据
        tableDate.setData(parentMapper.findExaminationByStudentId(searchCondition));

        return tableDate;
    }




    /**
     * 根据膳食id找到相应的膳食信息
     * @param mealId
     * @return
     */
    public TableDate findRecipeInfo(Integer mealId){
        TableDate tableDate = new TableDate();
        tableDate.setCount(1);
        tableDate.setData( parentMapper.findAllRecipeInfo(mealId));
        return tableDate;
    }



    /**
     * 根据id和条件找到孩子作业列表
     * @param mealPage
     * @return
     */
    public TableDate findAllMealInfo(MealPage mealPage){

        Integer startPage = (mealPage.getPage() -1) *mealPage.getLimit();
        mealPage.setPage(startPage);


        TableDate result = new TableDate();
        //计算总共的页数
        result.setCount(parentMapper.findAllMealInfoCount());
        //放入查询的数据
        result.setData( parentMapper.findAllMealInfo(mealPage));
        return result;
    }


    /**
     * 根据条件找到孩子的接送信息
     * @param pickUpInfoDetailPage
     * @return
     */
    public List<TblStutime> findPickUpDetailInfo(PickUpInfoDetailPage pickUpInfoDetailPage){
        return parentMapper.findPickUpDetailInfo(pickUpInfoDetailPage);
    };

    /**
     * 更新作业的路径
     * @param insertHomeWork
     * @return
     */
    public Integer updateWorkUrl(TblWork insertHomeWork){
        return parentMapper.updateWorkUrl(insertHomeWork);
    };

    /**
     * 查询是否已经有记录了
     * @param insertHomeWork
     * @return
     */
    public Integer findSameWorkInsertRecord(TblWork insertHomeWork){
        return parentMapper.findSameWorkInsertRecord(insertHomeWork);
    };

    /**
     * 根据类插入作业信息
     * @param insertHomeWork
     * @return
     */
    public Integer uploadHomeWork(TblWork insertHomeWork){
        return parentMapper.uploadHomeWork(insertHomeWork);
    };

    /**
     * 根据id和条件找到孩子作业列表
     * @param searchCondition
     * @return
     */
    public TableDate kidHomeWorkList(SearchCondition searchCondition,Integer cid){

        Integer startPage = (searchCondition.getPage() -1) *searchCondition.getLimit();
        searchCondition.setPage(startPage);

        TableDate result = new TableDate();
        //计算总共的页数
        result.setCount(parentMapper.countHomeWorkList(searchCondition,cid));
        //放入查询的数据
        result.setData( parentMapper.findHomeWorkList(searchCondition,cid));
        return result;
    }

    /**
     * 根据家长id找到属于自己的宝宝
     * @param parentId
     * @return
     */
    public Result getKids(Integer parentId){
        Result result = new Result();
        result.setData(parentMapper.findKisByParentId(parentId));
        return result;
    }


    /**
     * 根据家长的id和视频id插入相对应的分数
     * @param parentId
     * @param videoId
     * @param score
     * @return
     */
    public boolean recordScore(Integer parentId, Integer videoId, Integer score){

        //判断数据是否已经提交
        if (parentMapper.countScore(parentId,videoId)==0){
            //如果没有提交则插入数据
            parentMapper.recordScore(videoId,parentId,score,new Date());
            return true;
        }

        return false;
    }


    /**
     * 根据题目id找到配对的试题
     * @param safetyVideoId
     * @return
     */
    public List<TblSafetyvtq> findSafetyTestQuestionList(Integer safetyVideoId){
        return parentMapper.findSafetyTestQuestionList(safetyVideoId);
    }


    /**
     * 根据id和条件找到安全视频列表
     * @param searchCondition
     * @return
     */
    public TableDate parentSafetyTestList(SearchCondition searchCondition){

        Integer startPage = (searchCondition.getPage() -1) *searchCondition.getLimit();
        searchCondition.setPage(startPage);

        TableDate result = new TableDate();
        //计算总共的页数
        result.setCount(parentMapper.countVideoListNumber(searchCondition));
        //放入查询的数据
        result.setData( parentMapper.findVideoList(searchCondition));
        return result;
    }


    /**
     * 家长根据旧密码修改新密码
     * @param parentId
     * @param parentOldPwd
     * @param parentNewPwd
     * @return
     */
    public Result updateParentPwd(Integer parentId ,String parentOldPwd ,String parentNewPwd){
        Result updateResult = new Result();

        //判断数据是否完整
        if (parentId!=null&&parentOldPwd!=null&&!"".equals(parentOldPwd)&&parentNewPwd!=null&&!"".equals(parentNewPwd)){
            //判断旧密码是否输入正确
            if (parentMapper.countOldParentPwd(parentOldPwd,parentId)>0){
                //判断更改密码是否成功
                if(parentMapper.updateParentPwd(parentNewPwd,parentId)>0){
                    //修改成功
                    updateResult.setSuccess(true);
                }
            }else {
                updateResult.setMsg("oldPwdError");
            }

        }else {
            updateResult.setMsg("error");
        }

        return updateResult;
    }



    /**
     * 家长端口登陆方法
     * @param parentName
     * @param parentPwd
     * @return
     */
    public TblParent parentLogin(String parentName, String parentPwd){
        return parentMapper.parentLogin(parentName,parentPwd);
    }





}
